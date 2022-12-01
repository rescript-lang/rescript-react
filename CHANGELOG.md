# Changelog

## 0.11.0

No changes compared to rc.3.

## 0.11.0-rc.3

- Changed `React.jsxKeyed(s)`, `ReactDOM.jsxKeyed(s)` having key as optional argument.
- Changed `React.fragmentProps` children field to optional.
- Removed the helper functions for JSX v4 from `React.res`.
- Made `React.component` conversion function zero cost.

## 0.11.0-rc.2

- Fixed JSX PPX V3 backward compatibility.

## 0.11.0-rc.1

- Added React 18 bindings.
- Added binding for `React.isValidElement`.
- Added backgroundFilter prop in `ReactDOMStyle`.
- Relaxed React version requirement to v18.0.0+.
- `ReactDOM.domProps` is now an alias for `JsxDOM.domProps` (defined in the compiler repo)
- Deprecated types `ReactDOM.props`, `ReactDOM.Props.props`, `ReactDOM.Props.domProps`.
- Deprecated `ReactDOM.stringToComponent`.

## 0.11.0-alpha.1

- `RescriptReactErrorBoundary` component now implemented using `@react.component`, so it is compatible with JSX V4.
- `ReactV3` module added for backward compatibility to JSX V3. See [the V3 compatibility mode](https://github.com/rescript-lang/syntax/blob/master/cli/JSXV4.md)
- Fixed `react-dom/server` and `react-dom/test-utils` imports.
- Fixed `createRoot` bindings.
- Added `Keyboard.code` binding.
- Renamed `Changes.md` to `CHANGELOG.md` to align with the rescript-compiler repo.

**Breaking:**

- **IMPORTANT** The `React` module has been modified in a breaking way to support the new JSX PPX V4.

- Removed the deprecation attribute from apis of the new jsx transform (introduced in React v17).

- New version requirements:

  - ReScript compiler V10.1+
  - ReactJS v18.2.0+

## v0.10.3

- Temporarily remove peerDependency for bs-platform, so we can gracefully do the transition to our new `rescript` package

## v0.10.2

- Added `.js` extension to externals to comply to ES6 module conventions
- Bump peerDependencies versions

## v0.10.1

This is the initial version of `rescript-react`, a port of `reason-react@0.9` that will be almost equivalent, except for a few long needed minor breaking changes.

It is intended to be used with our newest ReScript React-JSX transformations (> JSX v3) and React v16.8.

For history on previous evolution of the code, check out the original [reason-react history](https://github.com/reasonml/reason-react/blob/master/HISTORY.md)

**Breaking:**

- **IMPORTANT:** Currently, old third-party packages that are still dependent on `reason-react` will not mix with other `@rescript/react` based code due to a build system problem. Which means that every third-party dependency needs to be upgraded to `@rescript/react` first to make it compatible. See [this forum discussion](https://forum.rescript-lang.org/t/discussion-reason-react-rescript-react-migration-path/1086) for more details.

- Removed legacy modules ("record api"):

  - `ReasonReactCompat`
  - `ReactDOMServerRe`
  - `ReactEventRe`
  - `ReasonReactOptimizedCreateClass`

- Renamed existing modules:

  - `ReasonReactErrorBoundary` -> `RescriptReactErrorBoundary`
  - `ReasonReactRouter` -> `RescriptReactRouter`
  - (Note: Usually the two only valid styles would be `ReScript` or `rescript`, the latter being the version for technical writing. We are using `Rescript` here, since it is essentially the capitalized version of `rescript`)

- Removed all functionality from `ReasonReact` and `ReactDOMRe` that is not needed for react-jsx v3 compatibility
- Moved `React.SuspenseList` to `React.Experimental.SuspenseList` to be more consistent with our Experimental features

**Misc:**

- Renamed `HISTORY.md` to `Changes.md` (aligning with other core projects, like genType)
