# Changelog

## master

- Nothing yet

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
