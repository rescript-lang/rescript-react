#!/usr/bin/env python3
"""Check downstream type interoperability and transitive feature exclusion."""

import json
from pathlib import Path
import shutil
import subprocess
import tempfile


ROOT = Path(__file__).resolve().parents[1]
CONSUMER = ROOT / "tests" / "consumer"


def build(fixture):
    result = subprocess.run(
        [str(fixture / "node_modules/.bin/rescript"), "build"],
        cwd=fixture, capture_output=True, text=True,
    )
    return result.returncode, result.stdout + result.stderr


def run(command, cwd):
    result = subprocess.run(command, cwd=cwd, capture_output=True, text=True)
    if result.returncode:
        raise RuntimeError(f"{command} failed:\n{result.stdout}\n{result.stderr}")
    return result.stdout


def pack(fixture):
    result = json.loads(run(
        ["npm", "pack", "--json", "--ignore-scripts", "--pack-destination", str(fixture)], ROOT
    ))[0]
    paths = {entry["path"] for entry in result["files"]}
    required = {"package.json", "rescript.json", "README.md", "MIGRATION.md", "src/ReactDOM.res"}
    if not required <= paths or any(path.startswith(("tests/", "benchmarks/")) for path in paths):
        raise RuntimeError(f"Unexpected package contents: {sorted(paths)}")
    print("PASS: packed package includes migration docs and excludes development fixtures")
    return fixture / result["filename"]


def installed_version(package):
    manifest = ROOT / "node_modules" / package / "package.json"
    return json.loads(manifest.read_text())["version"]


def prepare(fixture):
    (fixture / "src").mkdir()
    write_config(fixture, [])
    (fixture / "package.json").write_text(
        '{"name":"webapi-react-consumer-check","private":true,"type":"module"}\n'
    )
    dependencies = [
        f"{package}@{installed_version(package)}"
        for package in ("rescript", "@rescript/runtime", "react", "react-dom")
    ]
    run([
        "npm", "install", "--ignore-scripts", "--no-audit", "--no-fund",
        "--package-lock=false", str(pack(fixture)), *dependencies,
    ], fixture)
    shutil.copy(CONSUMER / "ReactOnly.res", fixture / "src")


def write_config(fixture, extra_dependencies):
    config = {
        "name": "webapi-react-consumer-check",
        "sources": ["src"],
        "jsx": {"version": 4},
        "dependencies": ["@rescript/react", *extra_dependencies],
        "package-specs": {"module": "esmodule", "in-source": True},
        "suffix": ".res.js",
    }
    (fixture / "rescript.json").write_text(json.dumps(config, indent=2) + "\n")


def assert_narrow_inventory(fixture):
    library = fixture / "node_modules" / "@rescript" / "webapi" / "lib" / "bs"
    for module in ("Element", "Node", "HTMLCollection", "Event", "Animation", "DOMRect", "MediaQueryList", "Window", "Document", "OffscreenCanvas"):
        if list(library.rglob(f"{module}-WebAPI.cmj")):
            raise RuntimeError(f"Excluded {module} compiler artifact is still present")
    sources = list((library / "src").rglob("*.cmj"))
    if len(sources) != 15:
        raise RuntimeError(f"Expected fifteen selective DOM/history/location sources, found {len(sources)}")


def require_build(fixture, description):
    code, log = build(fixture)
    if code:
        raise RuntimeError(f"{description}:\n{log}")
    print(f"PASS: {description}")


def add_direct_webapi(fixture):
    react = fixture / "node_modules/@rescript/react"
    manifest = json.loads((react / "package.json").read_text())
    specifier = manifest["dependencies"]["@rescript/webapi"]
    run([
        "npm", "install", "--ignore-scripts", "--no-audit", "--no-fund",
        "--package-lock=false", f"@rescript/webapi@{specifier}",
    ], fixture)
    if (react / "node_modules/@rescript/webapi").exists():
        raise RuntimeError("React and its consumer installed separate WebAPI copies")
    print("PASS: matching direct WebAPI dependency deduplicates with React")


def verify(fixture):
    require_build(fixture, "downstream consumer builds with only @rescript/react")
    assert_narrow_inventory(fixture)
    add_direct_webapi(fixture)
    config = json.loads((fixture / "node_modules/@rescript/react/rescript.json").read_text())
    dependency = next(dep for dep in config["dependencies"] if dep["name"] == "@rescript/webapi")
    write_config(fixture, [dependency])
    for source in ("Interop.res", "CSSCoreInterop.res", "EventInterop.res", "TestUtilsInterop.res"):
        shutil.copy(CONSUMER / source, fixture / "src")
    require_build(fixture, "narrow WebAPI types interoperate with React")
    verify_event_types(fixture)
    window = {"name": "@rescript/webapi", "features": ["WebAPI.Window"]}
    nodes = {"name": "@rescript/webapi", "features": ["WebAPI.DOMNodes"]}
    for name, source, expanded in (
        ("Element", "ExcludedElement.res", nodes),
        ("Node", "ExcludedNode.res", nodes),
        ("HTMLCollection", "ExcludedHTMLCollection.res", nodes),
        ("Event", "ExcludedEvent.res", nodes),
        ("Animation", "ExcludedAnimation.res", nodes),
        ("DOMRect", "ExcludedDOMRect.res", nodes),
        ("MediaQueryList", "ExcludedMediaQueryList.res", nodes),
        ("Window", "ExcludedWindow.res", window),
        ("Document", "ExcludedDocument.res", window),
        ("OffscreenCanvas", "Excluded.res", "@rescript/webapi"),
    ):
        verify_exclusion(fixture, dependency, name, source, expanded)
    verify_broad_consumer(fixture, dependency, nodes, "DOMNodesInterop.res")
    verify_broad_consumer(fixture, dependency, window, "WindowInterop.res")
    files = {"name": "@rescript/webapi", "features": ["WebAPI.File"]}
    verify_broad_consumer(fixture, dependency, files, "FileInterop.res")


def verify_event_types(fixture):
    subprocess.run(
        ["node", str(CONSUMER / "event-runtime.mjs"),
         str(fixture / "src/EventInterop.res.js")],
        check=True,
    )
    subprocess.run(
        ["node", str(CONSUMER / "dom-runtime.mjs"),
         str(fixture / "src/TestUtilsInterop.res.js")],
        check=True,
    )
    for filename, diagnostic in (
        ("InvalidEventTarget.res", "eventTarget"),
        ("InvalidCurrentTarget.res", "option"),
        ("InvalidView.res", "option"),
        ("InvalidFile.res", "private"),
    ):
        source = fixture / "src" / filename
        shutil.copy(CONSUMER / filename, source)
        try:
            code, log = build(fixture)
            if code == 0 or diagnostic not in log:
                raise RuntimeError(f"Expected {filename} to reject the invalid type:\n{log}")
            print(f"PASS: {filename} rejects the invalid type")
        finally:
            source.unlink()
    require_build(fixture, "narrow consumer recovers after event/file type checks")
    assert_narrow_inventory(fixture)


def verify_exclusion(fixture, dependency, module, source, expanded):
    excluded = fixture / "src" / source
    shutil.copy(CONSUMER / source, excluded)
    try:
        code, log = build(fixture)
        if code == 0 or module not in log or "can't be found" not in log:
            raise RuntimeError(f"Expected an excluded-module error, got:\n{log}")
        print(f"PASS: WebAPI.{module} is excluded by the narrow selection")
        write_config(fixture, [expanded])
        require_build(fixture, f"broader direct dependency enables WebAPI.{module}")
    finally:
        excluded.unlink()
        write_config(fixture, [dependency])
    require_build(fixture, f"narrow consumer recovers after {module} check")
    assert_narrow_inventory(fixture)


def verify_broad_consumer(fixture, dependency, broad, filename):
    source = fixture / "src" / filename
    shutil.copy(CONSUMER / source.name, source)
    try:
        write_config(fixture, [broad])
        require_build(fixture, f"{filename} retains public type interoperability")
    finally:
        source.unlink()
        write_config(fixture, [dependency])
    require_build(fixture, f"narrow consumer recovers after {filename} check")
    assert_narrow_inventory(fixture)


def main():
    with tempfile.TemporaryDirectory(prefix="rescript-react-consumer-") as path:
        fixture = Path(path)
        prepare(fixture)
        verify(fixture)


if __name__ == "__main__":
    main()
