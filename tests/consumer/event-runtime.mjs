import assert from "node:assert/strict";
import { pathToFileURL } from "node:url";

const bindings = await import(pathToFileURL(process.argv[2]).href);
const target = new EventTarget();
const nativeEvent = new Event("click");
// Exercise the FFI contract, not React's dispatch implementation.
const synthetic = { target, currentTarget: target, nativeEvent };
assert.equal(bindings.target(synthetic), target);
assert.equal(bindings.syntheticTarget(synthetic), target);
assert.equal(bindings.nativeEvent(synthetic), nativeEvent);
assert.equal(bindings.syntheticNativeEvent(synthetic), nativeEvent);
for (const getter of [bindings.currentTarget, bindings.syntheticCurrentTarget]) {
  assert.equal(getter(synthetic), target);
  assert.equal(getter({ ...synthetic, currentTarget: null }), undefined);
  assert.equal(getter({ ...synthetic, currentTarget: undefined }), undefined);
}
for (const getter of [
  bindings.focusRelatedTarget,
  bindings.mouseRelatedTarget,
  bindings.pointerRelatedTarget,
]) {
  assert.equal(getter({ relatedTarget: target }), target);
  assert.equal(getter({ relatedTarget: null }), undefined);
}
for (const getter of [bindings.uiView, bindings.pointerView]) {
  const view = {};
  assert.equal(getter({ view }), view);
  assert.equal(getter({ view: null }), undefined);
  assert.equal(getter({}), undefined);
}
const file = new File(["contents"], "example.txt", { type: "text/plain" });
assert.equal(bindings.toFile(file), file);
assert.equal(bindings.fromFile(file), file);
assert.equal(bindings.fileName(file), "example.txt");
const data = new FormData();
data.append("file", file);
data.append("text", "hello");
assert.equal(bindings.getFile(data, "file"), file);
assert.equal(bindings.getFile(data, "text"), undefined);
assert.equal(bindings.getFile(data, "missing"), undefined);
assert.deepEqual(bindings.getAll(data, "file"), [{ TAG: "File", _0: file }]);
assert.deepEqual(bindings.getAll(data, "text"), [{ TAG: "String", _0: "hello" }]);
console.log("PASS: event getter identity/nullability and native FormData/File interop");
