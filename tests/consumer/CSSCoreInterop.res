// CSS declaration modules stay intact to avoid duplicating their rich record signatures.
let color = (element: WebAPI.DOMTree.htmlElement) =>
  WebAPI.CSSStyleDeclaration.getPropertyValue(element.style, "color")
