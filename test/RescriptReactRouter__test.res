open Test
open RescriptReactRouter

let urlEquals = (~message=?, expected: RescriptReactRouter.url, actual: RescriptReactRouter.url) =>
  assertion(
    ~message?,
    ~operator="boolEquals",
    (a, b) =>
      Belt.List.eq(a.path, b.path, (a, b) => a === b) && a.search === b.search && a.hash === b.hash,
    expected,
    actual,
  )

test("RescriptReactRouter allows to create url from string: basic paths", () => {
  let expected = {path: list{"foo", "bar"}, hash: "", search: ""}
  let generated = dangerouslyGetInitialUrl(~serverUrlString="/foo/bar", ())

  urlEquals(generated, expected)
})

test("RescriptReactRouter creates urls with search", () => {
  let expected = {path: list{"foo", "bar"}, hash: "", search: "q=term"}
  let generated = dangerouslyGetInitialUrl(~serverUrlString="/foo/bar?q=term", ())

  urlEquals(generated, expected)
})
