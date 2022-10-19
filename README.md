## @rescript/react

> The Official ReScript Bindings for ReactJS

- [Documentation](https://rescript-lang.org/docs/react/latest/introduction)

### Installation

#### React-JSX transformation V4

- [Documentation](https://github.com/rescript-lang/syntax/blob/master/cli/JSXV4.md)

The ReScript compiler v10.1+ is required.

```
npm install @rescript/react --save
```

In your `bsconfig.json`:

```
{
  "jsx": { "version": 4, "mode": "classic" },
  "bs-dependencies": ["@rescript/react"]
}
```

If you want to try [the new jsx transform](https://reactjs.org/blog/2020/09/22/introducing-the-new-jsx-transform.html) which was introduced in React v17, set the `"mode": "automatic"`.

If you want to try build your project with JSX v3, see [the V3 compatibility mode](https://github.com/rescript-lang/syntax/blob/master/cli/JSXV4.md)

**Quick Links:**

- [Introduction](https://rescript-lang.org/docs/react/latest/introduction)

### Requirements

- v0.11.0+

  - ReScript Compiler v10.1+
  - ReactJS v18.0.0+

- v0.10.3

  - bs-platform v8.3+
  - ReactJS v16.8.1+
  - **Optimized for ReScript syntax usage**

### Development

```
npm install

# Starts the ReScript compiler in watch mode
npm start
```

### Acknowledgements

This project is the next evolution of the original [reason-react](https://github.com/reasonml/reason-react) bindings.
