import assert from "node:assert/strict";
import { pathToFileURL } from "node:url";

const bindings = await import(pathToFileURL(process.argv[2]).href);

// Check the compiled DOM FFI contract without replacing React's dispatch.
const element = {};
for (const result of [element, null, undefined]) {
  const parent = { querySelector: () => result };
  assert.equal(bindings.findBySelector(parent, ".child"), result ?? undefined);
}

const originalDocument = Object.getOwnPropertyDescriptor(globalThis, "document");
try {
  for (const absentBody of [null, undefined]) {
    let removed = false;
    const containerElement = { remove: () => { removed = true; } };
    globalThis.document = {
      body: absentBody,
      createElement: () => containerElement,
    };
    const container = bindings.makeContainer();
    bindings.prepareContainer(container);
    assert.equal(bindings.getContainer(container), containerElement);
    bindings.cleanupContainer(container);
    assert.equal(removed, true);
    assert.throws(() => bindings.getContainer(container));
    bindings.cleanupContainer(container);
  }

  const appended = [];
  const containerElement = { remove() {} };
  globalThis.document = {
    body: { appendChild: element => appended.push(element) },
    createElement: () => containerElement,
  };
  const container = bindings.makeContainer();
  bindings.prepareContainer(container);
  assert.deepEqual(appended, [containerElement]);
  bindings.cleanupContainer(container);
} finally {
  if (originalDocument) {
    Object.defineProperty(globalThis, "document", originalDocument);
  } else {
    delete globalThis.document;
  }
}
console.log("PASS: nullable DOM lookup and container lifecycle");
