## The home of `@rescript/react`, `@rescript/react-dom` and `@rescript/browser-router` 

This monorepo provides 3 packages:
- `@rescript/react`: the Official [ReScript](https://rescript-lang.org) Bindings for [ReactJS](https://react.dev/) 
- `@rescript/react-dom`: the Official [ReScript](https://rescript-lang.org) Bindings for [react-dom](https://react.dev/reference/react-dom)
- `@rescript/browser-router`: a lightweight web client router based on rescript pattern-matching.

If you want to use react on the web, you now need to install both `@rescript/react` and `@rescript/react-dom` bindings.

- [Introduction](https://rescript-lang.org/docs/react/latest/introduction)
- [Installation](https://rescript-lang.org/docs/react/latest/installation)

### Versions

| @rescript/react | ReScript                           | ReactJS | Documentation                                                     |
| --------------- | ---------------------------------- | ------- | ----------------------------------------------------------------- |
| 0.15.x          | 12.0+                              | 19      |                                                                   |
| 0.14.x          | 11.0+ (JSX4 + uncurried mode only) | 19      |                                                                   |
| 0.12.x, 0.13.x  | 11.0+                              | 18      | [Link](https://rescript-lang.org/docs/react/latest/introduction)  |
| 0.11.0          | 10.1                               | 18      | [Link](https://rescript-lang.org/docs/react/v0.11.0/introduction) |
| 0.10.3          | 8.3                                | 16.8.1+ | [Link](https://rescript-lang.org/docs/react/v0.10.0/introduction) |

### Development

```
yarn install
yarn build
```

### Acknowledgements

This project is the next evolution of the original [reason-react](https://github.com/reasonml/reason-react) bindings.
