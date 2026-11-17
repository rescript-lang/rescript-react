import assert from "node:assert/strict";
import { pathToFileURL } from "node:url";

const bindings = await import(pathToFileURL(process.argv[2]).href);
// Exercise synthetic wrapper FFI contracts, not browser event dispatch.
const transfer = { getData: (format) => format === "text/plain" ? "hello" : "" };
assert.equal(bindings.clipboard({ clipboardData: transfer }), transfer);
assert.equal(bindings.clipboardText({ clipboardData: transfer }), "hello");
assert.equal(bindings.clipboard({ clipboardData: null }), undefined);
assert.equal(bindings.clipboard({}), undefined);
const touch = { identifier: 7 };
const list = { length: 1, item: (index) => index === 0 ? touch : null };
const empty = { length: 0, item: () => null };
assert.equal(bindings.touches({ touches: list }), list);
assert.equal(bindings.changedTouches({ changedTouches: list }), list);
assert.equal(bindings.targetTouches({ targetTouches: list }), list);
assert.equal(bindings.firstTouch({ touches: list }), touch);
assert.equal(bindings.firstTouch({ touches: empty }), null);

const form = bindings.makeForm();
assert.ok(form instanceof FormData);
assert.equal(bindings.toForm(form), form);
assert.equal(bindings.fromForm(form), form);
form.append("text", "value");
const file = new File(["data"], "sample.txt");
form.append("file", file);
assert.equal(bindings.getString(form, "text"), "value");
assert.equal(bindings.getFile(form, "file"), file);
assert.equal(bindings.getNative(form, "text"), "value");
assert.equal(bindings.getNative(form, "file"), file);
assert.equal(bindings.getNative(form, "missing"), null);
assert.deepEqual(bindings.getAll(form, "text"), [{ TAG: "String", _0: "value" }]);
assert.deepEqual(bindings.getAll(form, "file"), [{ TAG: "File", _0: file }]);
bindings.action(form);
assert.equal(form.get("action"), "called");
assert.equal(bindings.statusData({ data: form }), form);
assert.equal(bindings.statusData({ data: null }), null);
console.log("PASS: clipboard/touch getters and shared FormData identity, actions, boxed values");
