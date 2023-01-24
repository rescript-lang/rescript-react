type t = JsxDOMStyle.t

@obj
external make: (
  ~azimuth: string=?,
  ~backdropFilter: string=?,
  ~background: string=?,
  ~backgroundAttachment: string=?,
  ~backgroundColor: string=?,
  ~backgroundImage: string=?,
  ~backgroundPosition: string=?,
  ~backgroundRepeat: string=?,
  ~border: string=?,
  ~borderCollapse: string=?,
  ~borderColor: string=?,
  ~borderSpacing: string=?,
  ~borderStyle: string=?,
  ~borderTop: string=?,
  ~borderRight: string=?,
  ~borderBottom: string=?,
  ~borderLeft: string=?,
  ~borderTopColor: string=?,
  ~borderRightColor: string=?,
  ~borderBottomColor: string=?,
  ~borderLeftColor: string=?,
  ~borderTopStyle: string=?,
  ~borderRightStyle: string=?,
  ~borderBottomStyle: string=?,
  ~borderLeftStyle: string=?,
  ~borderTopWidth: string=?,
  ~borderRightWidth: string=?,
  ~borderBottomWidth: string=?,
  ~borderLeftWidth: string=?,
  ~borderWidth: string=?,
  ~bottom: string=?,
  ~captionSide: string=?,
  ~clear: string=?,
  ~clip: string=?,
  ~color: string=?,
  ~content: string=?,
  ~counterIncrement: string=?,
  ~counterReset: string=?,
  ~cue: string=?,
  ~cueAfter: string=?,
  ~cueBefore: string=?,
  ~cursor: string=?,
  ~direction: string=?,
  ~display: string=?,
  ~elevation: string=?,
  ~emptyCells: string=?,
  ~float: string=?,
  ~font: string=?,
  ~fontFamily: string=?,
  ~fontSize: string=?,
  ~fontSizeAdjust: string=?,
  ~fontStretch: string=?,
  ~fontStyle: string=?,
  ~fontVariant: string=?,
  ~fontWeight: string=?,
  ~height: string=?,
  ~left: string=?,
  ~letterSpacing: string=?,
  ~lineHeight: string=?,
  ~listStyle: string=?,
  ~listStyleImage: string=?,
  ~listStylePosition: string=?,
  ~listStyleType: string=?,
  ~margin: string=?,
  ~marginTop: string=?,
  ~marginRight: string=?,
  ~marginBottom: string=?,
  ~marginLeft: string=?,
  ~markerOffset: string=?,
  ~marks: string=?,
  ~maxHeight: string=?,
  ~maxWidth: string=?,
  ~minHeight: string=?,
  ~minWidth: string=?,
  ~orphans: string=?,
  ~outline: string=?,
  ~outlineColor: string=?,
  ~outlineStyle: string=?,
  ~outlineWidth: string=?,
  ~overflow: string=?,
  ~overflowX: string=?,
  ~overflowY: string=?,
  ~padding: string=?,
  ~paddingTop: string=?,
  ~paddingRight: string=?,
  ~paddingBottom: string=?,
  ~paddingLeft: string=?,
  ~page: string=?,
  ~pageBreakAfter: string=?,
  ~pageBreakBefore: string=?,
  ~pageBreakInside: string=?,
  ~pause: string=?,
  ~pauseAfter: string=?,
  ~pauseBefore: string=?,
  ~pitch: string=?,
  ~pitchRange: string=?,
  ~playDuring: string=?,
  ~position: string=?,
  ~quotes: string=?,
  ~richness: string=?,
  ~right: string=?,
  ~size: string=?,
  ~speak: string=?,
  ~speakHeader: string=?,
  ~speakNumeral: string=?,
  ~speakPunctuation: string=?,
  ~speechRate: string=?,
  ~stress: string=?,
  ~tableLayout: string=?,
  ~textAlign: string=?,
  ~textDecoration: string=?,
  ~textIndent: string=?,
  ~textShadow: string=?,
  ~textTransform: string=?,
  ~top: string=?,
  ~unicodeBidi: string=?,
  ~verticalAlign: string=?,
  ~visibility: string=?,
  ~voiceFamily: string=?,
  ~volume: string=?,
  ~whiteSpace: string=?,
  ~widows: string=?,
  ~width: string=?,
  ~wordSpacing: string=?,
  ~zIndex: string=?,
  ~opacity: /* Below properties based on https://www.w3.org/Style/CSS/all-properties */
  /* Color Level 3 - REC */
  string=?,
  ~backgroundOrigin: /* Backgrounds and Borders Level 3 - CR */
  /* backgroundRepeat - already defined by CSS2Properties */
  /* backgroundAttachment - already defined by CSS2Properties */
  string=?,
  ~backgroundSize: string=?,
  ~backgroundClip: string=?,
  ~borderRadius: string=?,
  ~borderTopLeftRadius: string=?,
  ~borderTopRightRadius: string=?,
  ~borderBottomLeftRadius: string=?,
  ~borderBottomRightRadius: string=?,
  ~borderImage: string=?,
  ~borderImageSource: string=?,
  ~borderImageSlice: string=?,
  ~borderImageWidth: string=?,
  ~borderImageOutset: string=?,
  ~borderImageRepeat: string=?,
  ~boxShadow: string=?,
  ~columns: /* Multi-column Layout - CR */
  string=?,
  ~columnCount: string=?,
  ~columnFill: string=?,
  ~columnGap: string=?,
  ~columnRule: string=?,
  ~columnRuleColor: string=?,
  ~columnRuleStyle: string=?,
  ~columnRuleWidth: string=?,
  ~columnSpan: string=?,
  ~columnWidth: string=?,
  ~breakAfter: string=?,
  ~breakBefore: string=?,
  ~breakInside: string=?,
  ~rest: /* Speech - CR */
  string=?,
  ~restAfter: string=?,
  ~restBefore: string=?,
  ~speakAs: string=?,
  ~voiceBalance: string=?,
  ~voiceDuration: string=?,
  ~voicePitch: string=?,
  ~voiceRange: string=?,
  ~voiceRate: string=?,
  ~voiceStress: string=?,
  ~voiceVolume: string=?,
  ~objectFit: /* Image Values and Replaced Content Level 3 - CR */
  string=?,
  ~objectPosition: string=?,
  ~imageResolution: string=?,
  ~imageOrientation: string=?,
  ~alignContent: /* Flexible Box Layout - CR */
  string=?,
  ~alignItems: string=?,
  ~alignSelf: string=?,
  ~flex: string=?,
  ~flexBasis: string=?,
  ~flexDirection: string=?,
  ~flexFlow: string=?,
  ~flexGrow: string=?,
  ~flexShrink: string=?,
  ~flexWrap: string=?,
  ~justifyContent: string=?,
  ~order: string=?,
  ~gap: string=?,
  ~textDecorationColor: /* Text Decoration Level 3 - CR */
  /* textDecoration - already defined by CSS2Properties */
  string=?,
  ~textDecorationLine: string=?,
  ~textDecorationSkip: string=?,
  ~textDecorationStyle: string=?,
  ~textEmphasis: string=?,
  ~textEmphasisColor: string=?,
  ~textEmphasisPosition: string=?,
  ~textEmphasisStyle: string=?,
  ~textUnderlinePosition: /* textShadow - already defined by CSS2Properties */
  string=?,
  ~fontFeatureSettings: /* Fonts Level 3 - CR */
  string=?,
  ~fontKerning: string=?,
  ~fontLanguageOverride: string=?,
  ~fontSynthesis: /* fontSizeAdjust - already defined by CSS2Properties */
  /* fontStretch - already defined by CSS2Properties */
  string=?,
  ~forntVariantAlternates: string=?,
  ~fontVariantCaps: string=?,
  ~fontVariantEastAsian: string=?,
  ~fontVariantLigatures: string=?,
  ~fontVariantNumeric: string=?,
  ~fontVariantPosition: string=?,
  ~all: /* Cascading and Inheritance Level 3 - CR */
  string=?,
  ~glyphOrientationVertical: /* Writing Modes Level 3 - CR */
  string=?,
  ~textCombineUpright: string=?,
  ~textOrientation: string=?,
  ~writingMode: string=?,
  ~shapeImageThreshold: /* Shapes Level 1 - CR */
  string=?,
  ~shapeMargin: string=?,
  ~shapeOutside: string=?,
  ~clipPath: /* Masking Level 1 - CR */
  string=?,
  ~clipRule: string=?,
  ~mask: string=?,
  ~maskBorder: string=?,
  ~maskBorderMode: string=?,
  ~maskBorderOutset: string=?,
  ~maskBorderRepeat: string=?,
  ~maskBorderSlice: string=?,
  ~maskBorderSource: string=?,
  ~maskBorderWidth: string=?,
  ~maskClip: string=?,
  ~maskComposite: string=?,
  ~maskImage: string=?,
  ~maskMode: string=?,
  ~maskOrigin: string=?,
  ~maskPosition: string=?,
  ~maskRepeat: string=?,
  ~maskSize: string=?,
  ~maskType: string=?,
  ~backgroundBlendMode: /* Compositing and Blending Level 1 - CR */
  string=?,
  ~isolation: string=?,
  ~mixBlendMode: string=?,
  ~boxDecorationBreak: /* Fragmentation Level 3 - CR */
  string=?,
  ~boxSizing: /* breakAfter - already defined by Multi-column Layout */
  /* breakBefore - already defined by Multi-column Layout */
  /* breakInside - already defined by Multi-column Layout */
  /* Basic User Interface Level 3 - CR */
  string=?,
  ~caretColor: string=?,
  ~navDown: string=?,
  ~navLeft: string=?,
  ~navRight: string=?,
  ~navUp: string=?,
  ~outlineOffset: string=?,
  ~resize: string=?,
  ~textOverflow: string=?,
  ~grid: /* Grid Layout Level 1 - CR */
  string=?,
  ~gridArea: string=?,
  ~gridAutoColumns: string=?,
  ~gridAutoFlow: string=?,
  ~gridAutoRows: string=?,
  ~gridColumn: string=?,
  ~gridColumnEnd: string=?,
  ~gridColumnGap: string=?,
  ~gridColumnStart: string=?,
  ~gridGap: string=?,
  ~gridRow: string=?,
  ~gridRowEnd: string=?,
  ~gridRowGap: string=?,
  ~gridRowStart: string=?,
  ~gridTemplate: string=?,
  ~gridTemplateAreas: string=?,
  ~gridTemplateColumns: string=?,
  ~gridTemplateRows: string=?,
  ~willChange: /* Will Change Level 1 - CR */
  string=?,
  ~hangingPunctuation: /* Text Level 3 - LC */
  string=?,
  ~hyphens: string=?,
  ~lineBreak: /* letterSpacing - already defined by CSS2Properties */
  string=?,
  ~overflowWrap: string=?,
  ~tabSize: string=?,
  ~textAlignLast: /* textAlign - already defined by CSS2Properties */
  string=?,
  ~textJustify: string=?,
  ~wordBreak: string=?,
  ~wordWrap: string=?,
  ~animation: /* Animations - WD */
  string=?,
  ~animationDelay: string=?,
  ~animationDirection: string=?,
  ~animationDuration: string=?,
  ~animationFillMode: string=?,
  ~animationIterationCount: string=?,
  ~animationName: string=?,
  ~animationPlayState: string=?,
  ~animationTimingFunction: string=?,
  ~transition: /* Transitions - WD */
  string=?,
  ~transitionDelay: string=?,
  ~transitionDuration: string=?,
  ~transitionProperty: string=?,
  ~transitionTimingFunction: string=?,
  ~backfaceVisibility: /* Transforms Level 1 - WD */
  string=?,
  ~perspective: string=?,
  ~perspectiveOrigin: string=?,
  ~transform: string=?,
  ~transformOrigin: string=?,
  ~transformStyle: string=?,
  ~justifyItems: /* Box Alignment Level 3 - WD */
  /* alignContent - already defined by Flexible Box Layout */
  /* alignItems - already defined by Flexible Box Layout */
  string=?,
  ~justifySelf: string=?,
  ~placeContent: string=?,
  ~placeItems: string=?,
  ~placeSelf: string=?,
  ~appearance: /* Basic User Interface Level 4 - FPWD */
  string=?,
  ~caret: string=?,
  ~caretAnimation: string=?,
  ~caretShape: string=?,
  ~userSelect: string=?,
  ~maxLines: /* Overflow Level 3 - WD */
  string=?,
  ~marqueeDirection: /* Basix Box Model - WD */
  string=?,
  ~marqueeLoop: string=?,
  ~marqueeSpeed: string=?,
  ~marqueeStyle: string=?,
  ~overflowStyle: string=?,
  ~rotation: string=?,
  ~rotationPoint: string=?,
  ~alignmentBaseline: /* SVG 1.1 - REC */
  string=?,
  ~baselineShift: string=?,
  ~clip: string=?,
  ~clipPath: string=?,
  ~clipRule: string=?,
  ~colorInterpolation: string=?,
  ~colorInterpolationFilters: string=?,
  ~colorProfile: string=?,
  ~colorRendering: string=?,
  ~cursor: string=?,
  ~dominantBaseline: string=?,
  ~fill: string=?,
  ~fillOpacity: string=?,
  ~fillRule: string=?,
  ~filter: string=?,
  ~floodColor: string=?,
  ~floodOpacity: string=?,
  ~glyphOrientationHorizontal: string=?,
  ~glyphOrientationVertical: string=?,
  ~imageRendering: string=?,
  ~kerning: string=?,
  ~lightingColor: string=?,
  ~markerEnd: string=?,
  ~markerMid: string=?,
  ~markerStart: string=?,
  ~pointerEvents: string=?,
  ~shapeRendering: string=?,
  ~stopColor: string=?,
  ~stopOpacity: string=?,
  ~stroke: string=?,
  ~strokeDasharray: string=?,
  ~strokeDashoffset: string=?,
  ~strokeLinecap: string=?,
  ~strokeLinejoin: string=?,
  ~strokeMiterlimit: string=?,
  ~strokeOpacity: string=?,
  ~strokeWidth: string=?,
  ~textAnchor: string=?,
  ~textRendering: string=?,
  ~rubyAlign: /* Ruby Layout Level 1 - WD */
  string=?,
  ~rubyMerge: string=?,
  ~rubyPosition: string=?,
  /* Lists and Counters Level 3 - WD */
  /* listStyle - already defined by CSS2Properties */
  /* listStyleImage - already defined by CSS2Properties */
  /* listStylePosition - already defined by CSS2Properties */
  /* listStyleType - already defined by CSS2Properties */
  /* counterIncrement - already defined by CSS2Properties */
  /* counterReset - already defined by CSS2Properties */
  /* Not added yet
   * -------------
   * Generated Content for Paged Media - WD
   * Generated Content Level 3 - WD
   * Line Grid Level 1 - WD
   * Regions - WD
   * Inline Layout Level 3 - WD
   * Round Display Level 1 - WD
   * Image Values and Replaced Content Level 4 - WD
   * Positioned Layout Level 3 - WD
   * Filter Effects Level 1 -  -WD
   * Exclusions Level 1 - WD
   * Text Level 4 - FPWD
   * SVG Markers - FPWD
   * Motion Path Level 1 - FPWD
   * Color Level 4 - FPWD
   * SVG Strokes - FPWD
   * Table Level 3 - FPWD
   */
  unit,
) => t = ""

/* CSS2Properties: https://www.w3.org/TR/DOM-Level-2-Style/css.html#CSS-CSS2Properties */
@val
external combine: (@as(json`{}`) _, t, t) => t = "Object.assign"

external _dictToStyle: Js.Dict.t<string> => t = "%identity"

let unsafeAddProp = (style, key, value) => {
  let dict = Js.Dict.empty()
  Js.Dict.set(dict, key, value)
  combine(style, _dictToStyle(dict))
}

@val
external unsafeAddStyle: (@as(json`{}`) _, t, {..}) => t = "Object.assign"
