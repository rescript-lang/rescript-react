type element = Jsx.element

@val external null: element = "null"

external float: float => element = "%identity"
external int: int => element = "%identity"
external string: string => element = "%identity"

external array: array<element> => element = "%identity"

type componentLike<'props, 'return> = Jsx.componentLike<'props, 'return>

type component<'props> = Jsx.component<'props>

external component: componentLike<'props, element> => component<'props> = "%identity"

@module("react")
external createElement: (component<'props>, 'props) => element = "createElement"

@module("react")
external cloneElement: (element, 'props) => element = "cloneElement"

@module("react")
external isValidElement: 'a => bool = "isValidElement"

@variadic @module("react")
external createElementVariadic: (component<'props>, 'props, array<element>) => element =
  "createElement"

@module("react/jsx-runtime")
external jsx: (component<'props>, 'props) => element = "jsx"

@module("react/jsx-runtime")
external jsxKeyed: (component<'props>, 'props, ~key: string=?, @ignore unit) => element = "jsx"

@module("react/jsx-runtime")
external jsxs: (component<'props>, 'props) => element = "jsxs"

@module("react/jsx-runtime")
external jsxsKeyed: (component<'props>, 'props, ~key: string=?, @ignore unit) => element = "jsxs"

type fragmentProps<'children> = {children?: 'children}

@module("react/jsx-runtime") external jsxFragment: component<fragmentProps<'children>> = "Fragment"

type ref<'value> = {mutable current: 'value}

module Ref = {
  @deprecated("Please use the type React.ref instead")
  type t<'value> = ref<'value>

  @deprecated("Please directly read from ref.current instead") @get
  external current: ref<'value> => 'value = "current"

  @deprecated("Please directly assign to ref.current instead") @set
  external setCurrent: (ref<'value>, 'value) => unit = "current"
}

@module("react")
external createRef: unit => ref<Js.nullable<'a>> = "createRef"

module Children = {
  @module("react") @scope("Children")
  external map: (element, element => element) => element = "map"
  @module("react") @scope("Children")
  external mapWithIndex: (element, @uncurry (element, int) => element) => element = "map"
  @module("react") @scope("Children")
  external forEach: (element, element => unit) => unit = "forEach"
  @module("react") @scope("Children")
  external forEachWithIndex: (element, @uncurry (element, int) => unit) => unit = "forEach"
  @module("react") @scope("Children")
  external count: element => int = "count"
  @module("react") @scope("Children")
  external only: element => element = "only"
  @module("react") @scope("Children")
  external toArray: element => array<element> = "toArray"
}

module Context = {
  type t<'context>

  type props<'context> = {
    value: 'context,
    children: element,
  }

  @get
  external provider: t<'context> => component<props<'context>> = "Provider"
}

@module("react")
external createContext: 'a => Context.t<'a> = "createContext"

@module("react")
external forwardRef: (@uncurry ('props, Js.Nullable.t<ref<'a>>) => element) => component<'props> =
  "forwardRef"

@module("react")
external memo: component<'props> => component<'props> = "memo"

@module("react")
external memoCustomCompareProps: (
  component<'props>,
  @uncurry ('props, 'props) => bool,
) => component<'props> = "memo"

@module("react") external fragment: 'a = "Fragment"

module Fragment = {
  type props<'children> = {key?: string, children: 'children}

  @module("react")
  external make: component<props<'children>> = "Fragment"
}

module StrictMode = {
  type props<'children> = {key?: string, children: 'children}

  @module("react")
  external make: component<props<'children>> = "StrictMode"
}

module Suspense = {
  type props<'children, 'fallback> = {key?: string, children?: 'children, fallback?: 'fallback}

  @module("react")
  external make: component<props<'children, 'fallback>> = "Suspense"
}

module Experimental = {
  module SuspenseList = {
    type revealOrder
    type tail
    type props<'children, 'revealOrder, 'tail> = {
      key?: string,
      children?: 'children,
      revealOrder?: 'revealOrder,
      tail?: 'tail,
    }

    @module("react")
    external make: component<props<'children, 'revealOrder, 'tail>> = "SuspenseList"
  }
}

/* HOOKS */

/*
 * Yeah, we know this api isn't great. tl;dr: useReducer instead.
 * It's because useState can take functions or non-function values and treats
 * them differently. Lazy initializer + callback which returns state is the
 * only way to safely have any type of state and be able to update it correctly.
 */
@module("react")
external useState: (@uncurry (unit => 'state)) => ('state, ('state => 'state) => unit) = "useState"

@module("react")
external useReducer: (@uncurry ('state, 'action) => 'state, 'state) => ('state, 'action => unit) =
  "useReducer"

@module("react")
external useReducerWithMapState: (
  @uncurry ('state, 'action) => 'state,
  'initialState,
  @uncurry ('initialState => 'state),
) => ('state, 'action => unit) = "useReducer"

@module("react")
external useEffect: (@uncurry (unit => option<unit => unit>)) => unit = "useEffect"
@module("react")
external useEffect0: (@uncurry (unit => option<unit => unit>), @as(json`[]`) _) => unit =
  "useEffect"
@module("react")
external useEffect1: (@uncurry (unit => option<unit => unit>), array<'a>) => unit = "useEffect"
@module("react")
external useEffect2: (@uncurry (unit => option<unit => unit>), ('a, 'b)) => unit = "useEffect"
@module("react")
external useEffect3: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c)) => unit = "useEffect"
@module("react")
external useEffect4: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd)) => unit =
  "useEffect"
@module("react")
external useEffect5: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd, 'e)) => unit =
  "useEffect"
@module("react")
external useEffect6: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd, 'e, 'f)) => unit =
  "useEffect"
@module("react")
external useEffect7: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => unit = "useEffect"

@module("react")
external useLayoutEffect: (@uncurry (unit => option<unit => unit>)) => unit = "useLayoutEffect"
@module("react")
external useLayoutEffect0: (@uncurry (unit => option<unit => unit>), @as(json`[]`) _) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect1: (@uncurry (unit => option<unit => unit>), array<'a>) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect2: (@uncurry (unit => option<unit => unit>), ('a, 'b)) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect3: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c)) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect4: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd)) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect5: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd, 'e)) => unit =
  "useLayoutEffect"
@module("react")
external useLayoutEffect6: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => unit = "useLayoutEffect"
@module("react")
external useLayoutEffect7: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => unit = "useLayoutEffect"

@module("react")
external useMemo: (@uncurry (unit => 'any)) => 'any = "useMemo"

@module("react")
external useMemo0: (@uncurry (unit => 'any), @as(json`[]`) _) => 'any = "useMemo"

@module("react")
external useMemo1: (@uncurry (unit => 'any), array<'a>) => 'any = "useMemo"

@module("react")
external useMemo2: (@uncurry (unit => 'any), ('a, 'b)) => 'any = "useMemo"

@module("react")
external useMemo3: (@uncurry (unit => 'any), ('a, 'b, 'c)) => 'any = "useMemo"

@module("react")
external useMemo4: (@uncurry (unit => 'any), ('a, 'b, 'c, 'd)) => 'any = "useMemo"

@module("react")
external useMemo5: (@uncurry (unit => 'any), ('a, 'b, 'c, 'd, 'e)) => 'any = "useMemo"

@module("react")
external useMemo6: (@uncurry (unit => 'any), ('a, 'b, 'c, 'd, 'e, 'f)) => 'any = "useMemo"

@module("react")
external useMemo7: (@uncurry (unit => 'any), ('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'any = "useMemo"

/* This is used as return values */
type callback<'input, 'output> = 'input => 'output

@module("react")
external useCallback: (@uncurry ('input => 'output)) => callback<'input, 'output> = "useCallback"

@module("react")
external useCallback0: (
  @uncurry ('input => 'output),
  @as(json`[]`) _,
) => callback<'input, 'output> = "useCallback"

@module("react")
external useCallback1: (@uncurry ('input => 'output), array<'a>) => callback<'input, 'output> =
  "useCallback"

@module("react")
external useCallback2: (@uncurry ('input => 'output), ('a, 'b)) => callback<'input, 'output> =
  "useCallback"

@module("react")
external useCallback3: (@uncurry ('input => 'output), ('a, 'b, 'c)) => callback<'input, 'output> =
  "useCallback"

@module("react")
external useCallback4: (
  @uncurry ('input => 'output),
  ('a, 'b, 'c, 'd),
) => callback<'input, 'output> = "useCallback"

@module("react")
external useCallback5: (
  @uncurry ('input => 'output),
  ('a, 'b, 'c, 'd, 'e),
) => callback<'input, 'output> = "useCallback"

@module("react")
external useCallback6: (
  @uncurry ('input => 'output),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => callback<'input, 'output> = "useCallback"

@module("react")
external useCallback7: (
  @uncurry ('input => 'output),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => callback<'input, 'output> = "useCallback"

@module("react")
external useContext: Context.t<'any> => 'any = "useContext"

@module("react") external useRef: 'value => ref<'value> = "useRef"

@module("react")
external useImperativeHandle0: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  @as(json`[]`) _,
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle1: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  array<'a>,
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle2: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b),
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle3: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b, 'c),
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle4: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b, 'c, 'd),
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle5: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b, 'c, 'd, 'e),
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle6: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => unit = "useImperativeHandle"

@module("react")
external useImperativeHandle7: (
  Js.Nullable.t<ref<'value>>,
  @uncurry (unit => 'value),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => unit = "useImperativeHandle"

@module("react") external useId: unit => string = "useId"

@module("react") external useDeferredValue: 'value => 'value = "useDeferredValue"

@module("react")
external useTransition: unit => (bool, (. unit => unit) => unit) = "useTransition"

@module("react")
external useInsertionEffect: (@uncurry (unit => option<unit => unit>)) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect0: (@uncurry (unit => option<unit => unit>), @as(json`[]`) _) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect1: (@uncurry (unit => option<unit => unit>), array<'a>) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect2: (@uncurry (unit => option<unit => unit>), ('a, 'b)) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect3: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c)) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect4: (@uncurry (unit => option<unit => unit>), ('a, 'b, 'c, 'd)) => unit =
  "useInsertionEffect"
@module("react")
external useInsertionEffect5: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e),
) => unit = "useInsertionEffect"
@module("react")
external useInsertionEffect6: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => unit = "useInsertionEffect"
@module("react")
external useInsertionEffect7: (
  @uncurry (unit => option<unit => unit>),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => unit = "useInsertionEffect"

@module("react")
external useSyncExternalStore: (
  ~subscribe: @uncurry ((unit => unit) => (. unit) => unit),
  ~getSnapshot: @uncurry unit => 'state,
) => 'state = "useSyncExternalStore"

@module("react")
external useSyncExternalStoreWithServerSnapshot: (
  ~subscribe: @uncurry ((unit => unit) => (. unit) => unit),
  ~getSnapshot: @uncurry unit => 'state,
  ~getServerSnapshot: @uncurry unit => 'state,
) => 'state = "useSyncExternalStore"

module Uncurried = {
  @module("react")
  external useState: (@uncurry (unit => 'state)) => ('state, (. 'state => 'state) => unit) =
    "useState"

  @module("react")
  external useReducer: (
    @uncurry ('state, 'action) => 'state,
    'state,
  ) => ('state, (. 'action) => unit) = "useReducer"

  @module("react")
  external useReducerWithMapState: (
    @uncurry ('state, 'action) => 'state,
    'initialState,
    @uncurry ('initialState => 'state),
  ) => ('state, (. 'action) => unit) = "useReducer"

  type callback<'input, 'output> = (. 'input) => 'output

  @module("react")
  external useCallback: (@uncurry ('input => 'output)) => callback<'input, 'output> = "useCallback"

  @module("react")
  external useCallback0: (
    @uncurry ('input => 'output),
    @as(json`[]`) _,
  ) => callback<'input, 'output> = "useCallback"

  @module("react")
  external useCallback1: (@uncurry ('input => 'output), array<'a>) => callback<'input, 'output> =
    "useCallback"

  @module("react")
  external useCallback2: (@uncurry ('input => 'output), ('a, 'b)) => callback<'input, 'output> =
    "useCallback"

  @module("react")
  external useCallback3: (@uncurry ('input => 'output), ('a, 'b, 'c)) => callback<'input, 'output> =
    "useCallback"

  @module("react")
  external useCallback4: (
    @uncurry ('input => 'output),
    ('a, 'b, 'c, 'd),
  ) => callback<'input, 'output> = "useCallback"

  @module("react")
  external useCallback5: (
    @uncurry ('input => 'output),
    ('a, 'b, 'c, 'd, 'e),
  ) => callback<'input, 'output> = "useCallback"

  @module("react")
  external useCallback6: (
    @uncurry ('input => 'output),
    ('a, 'b, 'c, 'd, 'e, 'f),
  ) => callback<'input, 'output> = "useCallback"

  @module("react")
  external useCallback7: (
    @uncurry ('input => 'output),
    ('a, 'b, 'c, 'd, 'e, 'f, 'g),
  ) => callback<'input, 'output> = "useCallback"
}

@set
external setDisplayName: (component<'props>, string) => unit = "displayName"

@get @return(nullable)
external displayName: component<'props> => option<string> = "displayName"
