## @rescript/react

> The Official [ReScript](https://rescript-lang.org) Bindings for [ReactJS](https://react.dev/)

- [Introduction](https://rescript-lang.org/docs/react/latest/introduction)
- [Installation](https://rescript-lang.org/docs/react/latest/installation)

### Versions

| @rescript/react | ReScript                           | ReactJS | Documentation                                                     |
| --------------- | ---------------------------------- | ------- | ----------------------------------------------------------------- |
| 0.16.x          | 13.0+                              | 19      |     
| 0.15.x          | 12.0+                              | 19      |                                                                   |
| 0.14.x          | 11.0+ (JSX4 + uncurried mode only) | 19      |                                                                   |
| 0.12.x, 0.13.x  | 11.0+                              | 18      | [Link](https://rescript-lang.org/docs/react/latest/introduction)  |
| 0.11.0          | 10.1                               | 18      | [Link](https://rescript-lang.org/docs/react/v0.11.0/introduction) |
| 0.10.3          | 8.3                                | 16.8.1+ | [Link](https://rescript-lang.org/docs/react/v0.10.0/introduction) |

### Development

```
npm install

# Starts the ReScript compiler in watch mode
npm start
```

Run `npm ci`, `npm run build`, and `npm test` with Node.js 24 and Python 3.
The tests install the packed library into a disposable consumer and check
type interoperability, feature selection, and JavaScript binding behavior.

### WebAPI types

DOM elements, native events, event targets, and FormData files use WebAPI
types. The library selects `WebAPI.DOMTree`, `WebAPI.History`, and
`WebAPI.Location`; consumers can enable additional WebAPI features for
the operations they use.

This prerelease requires ReScript 13.0.0-alpha.7 and pins a WebAPI source
snapshot while its required features await release. See the
[migration notes](MIGRATION.md) for public type changes and the dependency
release requirement.

### Acknowledgements

This project is the next evolution of the original [reason-react](https://github.com/reasonml/reason-react) bindings.
