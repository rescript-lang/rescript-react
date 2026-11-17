# WebAPI DOM types

This prerelease uses WebAPI types throughout the DOM bindings. It requires
ReScript 13.0.0-alpha.7 and a compatible `@rescript/runtime`.

## Dependency release requirement

The WebAPI dependency is pinned to the immutable source snapshot
`81ac4eebeae3ff0cc9118e7b4b62323e3cee9729`. Its `DOMTree`, `History`, and
`Location` features are not yet available together in a published release.
Before a production release, replace the snapshot with a published WebAPI
version containing those features and rerun the packed-consumer tests.
The compiler peer range follows the snapshot's supported v13 prerelease range;
ReScript 12 is not supported by this migration.

## Elements and refs

Use `WebAPI.DOMTree.element` for React roots, portals, DOM refs, and
`ReactTestUtils` DOM helpers. Ref callbacks still receive nullable elements
and may return a cleanup function. JSX, style, and synthetic-event tag
identities are unchanged.

Consumers that name WebAPI modules directly should declare `@rescript/webapi`
in their package and ReScript dependencies. Select the features needed by
their code, for example:

```json
{
  "dependencies": [
    "@rescript/react",
    {
      "name": "@rescript/webapi",
      "features": ["WebAPI.DOMTree", "WebAPI.Event"]
    }
  ]
}
```

During this prerelease, use the same WebAPI snapshot as `@rescript/react` to
avoid installing incompatible copies. Consumers that do not name WebAPI
modules can depend only on `@rescript/react`.

## Events

| Getter | Return type |
| --- | --- |
| `nativeEvent` in every event family | `WebAPI.DOM.event` |
| `target` in every event family | `WebAPI.DOM.eventTarget` |
| `currentTarget` in every event family | `option<WebAPI.DOM.eventTarget>` |
| Focus, Mouse, and Pointer `relatedTarget` | `option<WebAPI.DOM.eventTarget>` |
| UI and Pointer `view` | `option<WebAPI.DOM.window>` |
| Pointer `pointerId` | `int` |

The `Synthetic` getters accept all synthetic event families. Synthetic events
remain React-specific values; they are not native DOM events.

Event targets are not necessarily elements. Access concrete element fields
only after runtime narrowing with an appropriately typed DOM binding; do not
replace open-object field access with an unchecked cast.

React clears `currentTarget` after invoking each handler, even after
`persist()`. Match `Some(target)` / `None`, and capture a present target inside
the handler if it is needed later. `view` can be null on a native UI event or
absent on a scroll event; both produce `None`. Related targets likewise map
both null and undefined to `None`.

Returning a WebAPI type does not enable all its operations. For example,
select `WebAPI.Event` to use native event operations.

## FormData files

`ReactDOM.FormData.file` aliases `WebAPI.DOM.file`, so files interoperate with
`WebAPI.File.t` without conversion. Select `WebAPI.File` for file operations.
The FormData wrapper, its boxed `String`/`File` variants, and form-action
types retain their existing identities and behavior.
