// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var Caml_option = require("rescript/lib/js/caml_option.js");

function safeMakeEvent(eventName) {
  if (typeof Event === "function") {
    return new Event(eventName);
  }
  var $$event = document.createEvent("Event");
  $$event.initEvent(eventName, true, true);
  return $$event;
}

function pathParse(str) {
  switch (str) {
    case "" :
    case "/" :
        return /* [] */0;
    default:
      var raw = str.slice(1);
      var match = raw[raw.length - 1 | 0];
      var raw$1 = match === "/" ? raw.slice(0, -1) : raw;
      var match$1 = raw$1.split("?", 2);
      var raw$2 = match$1.length !== 2 ? raw$1 : match$1[0];
      var a = raw$2.split("/").filter(function (item) {
            return item.length !== 0;
          });
      var _i = a.length - 1 | 0;
      var _res = /* [] */0;
      while(true) {
        var res = _res;
        var i = _i;
        if (i < 0) {
          return res;
        }
        _res = {
          hd: a[i],
          tl: res
        };
        _i = i - 1 | 0;
        continue ;
      };
  }
}

function path(serverUrlString, param) {
  var match = globalThis.window;
  if (serverUrlString !== undefined) {
    return pathParse(serverUrlString);
  } else if (match !== undefined) {
    return pathParse(Caml_option.valFromOption(match).location.pathname);
  } else {
    return /* [] */0;
  }
}

function hash() {
  var $$window = globalThis.window;
  if ($$window === undefined) {
    return "";
  }
  var raw = Caml_option.valFromOption($$window).location.hash;
  switch (raw) {
    case "" :
    case "#" :
        return "";
    default:
      return raw.slice(1);
  }
}

function searchParse(str) {
  switch (str) {
    case "" :
    case "?" :
        return "";
    default:
      var match = str.split("?", 2);
      if (match.length !== 2) {
        return "";
      } else {
        return match[1];
      }
  }
}

function search(serverUrlString, param) {
  var match = globalThis.window;
  if (serverUrlString !== undefined) {
    return searchParse(serverUrlString);
  } else if (match !== undefined) {
    return searchParse(Caml_option.valFromOption(match).location.search);
  } else {
    return "";
  }
}

function push(path) {
  var match = globalThis.history;
  var match$1 = globalThis.window;
  if (match !== undefined && match$1 !== undefined) {
    Caml_option.valFromOption(match).pushState(null, "", path);
    Caml_option.valFromOption(match$1).dispatchEvent(safeMakeEvent("popstate"));
    return ;
  }
  
}

function replace(path) {
  var match = globalThis.history;
  var match$1 = globalThis.window;
  if (match !== undefined && match$1 !== undefined) {
    Caml_option.valFromOption(match).replaceState(null, "", path);
    Caml_option.valFromOption(match$1).dispatchEvent(safeMakeEvent("popstate"));
    return ;
  }
  
}

function urlNotEqual(a, b) {
  if (a.hash !== b.hash || a.search !== b.search) {
    return true;
  } else {
    var _aList = a.path;
    var _bList = b.path;
    while(true) {
      var bList = _bList;
      var aList = _aList;
      if (!aList) {
        if (bList) {
          return true;
        } else {
          return false;
        }
      }
      if (!bList) {
        return true;
      }
      if (aList.hd !== bList.hd) {
        return true;
      }
      _bList = bList.tl;
      _aList = aList.tl;
      continue ;
    };
  }
}

function url(serverUrlString, param) {
  return {
          path: path(serverUrlString, undefined),
          hash: hash(),
          search: search(serverUrlString, undefined)
        };
}

function watchUrl(callback) {
  var $$window = globalThis.window;
  if ($$window === undefined) {
    return function () {
      
    };
  }
  var watcherID = function () {
    callback(url(undefined, undefined));
  };
  Caml_option.valFromOption($$window).addEventListener("popstate", watcherID);
  return watcherID;
}

function unwatchUrl(watcherID) {
  var $$window = globalThis.window;
  if ($$window !== undefined) {
    Caml_option.valFromOption($$window).removeEventListener("popstate", watcherID);
    return ;
  }
  
}

function useUrl(serverUrl, param) {
  var match = React.useState(function () {
        if (serverUrl !== undefined) {
          return serverUrl;
        } else {
          return url(undefined, undefined);
        }
      });
  var setUrl = match[1];
  var url$1 = match[0];
  React.useEffect((function () {
          var watcherId = watchUrl(function (url) {
                setUrl(function (param) {
                      return url;
                    });
              });
          var newUrl = url(undefined, undefined);
          if (urlNotEqual(newUrl, url$1)) {
            setUrl(function (param) {
                  return newUrl;
                });
          }
          return (function () {
                    unwatchUrl(watcherId);
                  });
        }), []);
  return url$1;
}

var dangerouslyGetInitialUrl = url;

exports.push = push;
exports.replace = replace;
exports.watchUrl = watchUrl;
exports.unwatchUrl = unwatchUrl;
exports.dangerouslyGetInitialUrl = dangerouslyGetInitialUrl;
exports.useUrl = useUrl;
/* react Not a pure module */
