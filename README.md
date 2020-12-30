## rescript-react 

> The Official ReScript Bindings for ReactJS
>
> **not ready yet / highly experimental (do not use, unless you are contributor)**

### Transition Plan

**v0.10 tasks:**

- [x] Port to ReScript syntax
- [x] Align naming / terminologies
- [x] Remove legacy code (see Changes.md for details)
- [x] Upgrade to bs-platform@8.4
- [ ] Align upcoming docs for `rescript-react@0.10`
- [ ] Write migration-guide for `reason-react@0.9` -> `rescript-react@0.10`
- [ ] Try `rescript-react` in existing codebases before official release
- [ ] Release `rescript-react@0.10` (which should be easy to migrate to)
- [ ] Add a note on `reason-react` for new users

**v1.0 tasks:**

The `v1.0` release will introduce more potential breaking changes, due to a new ppx release.

- [ ] Discuss upcoming changes / upgrade strategy (blog post / forum)
- [ ] add more actionables as plans are discussed


```
# proposal for package name
npm install @rescript-lang/rescript-react
```

**Quick Links:**

- [Introduction](https://rescript-lang.org/docs/react/latest/introduction)
- [Installation](https://rescript-lang.org/docs/react/latest/installation)

### Requirements

- bs-platform v8.1+
- ReactJS v17+
- ReScript -> react-jsx v4+
- **Optimized for ReScript syntax usage**

### Development

```
npm install

# Starts the ReScript compiler in watchmode
npm start
```

### Acknowledgements

This project is the next evolution of the original [reason-react](https://github.com/reasonml/reason-react) bindings.
