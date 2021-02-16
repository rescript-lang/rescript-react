## rescript-react 

> The Official ReScript Bindings for ReactJS

- [Documentation](https://rescript-lang.org/docs/react/latest/introduction)

### Transition Plan (reason-react -> rescript-react)

- Existing users want to upgrade from `reason-react@0.9` to `rescript-react@0.10` (should be a smooth transition, check out the [Changes.md](./Changes.md) for minor breaking changes)
- Make sure that all community libraries that are still on `reason-react` publish a new `@rescript/react` version as well (for compatibility reasons)
- We will soon publish our `v1.0` changes, with a new `react-jsx` version and some other cool features! Check out our [RFC post](https://forum.rescript-lang.org/t/rfc-rescript-react/901) for more infos.

### Installation

```
npm install @rescript/react --save
```

In your `bsconfig.json`:

```
{
  "reason": { "react-jsx": 3 },
  "bs-dependencies": ["@rescript/react"]
}
```

**Quick Links:**

- [Introduction](https://rescript-lang.org/docs/react/latest/introduction)

### Requirements

- bs-platform v8.3+
- ReactJS v16.8.1+
- **Optimized for ReScript syntax usage**

### Development

```
npm install

# Starts the ReScript compiler in watchmode
npm start
```

### Acknowledgements

This project is the next evolution of the original [reason-react](https://github.com/reasonml/reason-react) bindings.
