# Packed consumer checks

Run `npm ci`, `npm run build`, and `npm test` using Node.js 24 and Python 3.
`npm test` packs the library and installs it into a temporary consumer under
`node_modules`, using the compiler, runtime, and React versions installed by
the root lockfile. It requires registry access (or a populated npm cache).
No checkout symlinks or precompiled library artifacts are used.

The suite checks:

- The published file inventory, including migration documentation.
- A consumer depending only on React and consumers explicitly selecting WebAPI.
- Element, ref, style, event, and file type interoperability.
- Rejection of invalid target, currentTarget, view, and file assumptions.
- Excluded WebAPI operations, opt-in feature expansion, and recovery to the
  narrow selection after each build.
- Compiled JavaScript getter identity and null/undefined conversion, native
  FormData/File values, and DOM helper/container behavior.

The Node assertions exercise binding contracts, not browser rendering or
React's real event dispatch. Fixtures are removed on both success and failure.
