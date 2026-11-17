// The React package's WebAPI dependency is sufficient when not naming WebAPI directly.
let createRoot = element => ReactDOM.Client.createRoot(element)
let elementWithRef = ref => <div ref={ReactDOM.Ref.domRef(ref)} />
