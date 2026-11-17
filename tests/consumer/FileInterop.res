// Opting into operations must not require converting the core-backed File type.
let toPublic = (file: ReactDOM.FormData.file): WebAPI.File.t => file
let fromPublic = (file: WebAPI.File.t): ReactDOM.FormData.file => file
let fileName = (file: ReactDOM.FormData.file) => file.name
