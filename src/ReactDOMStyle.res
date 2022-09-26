type t = {
  @optional
  azimuth: string,
  @optional
  background: string,
  @optional
  backgroundAttachment: string,
  @optional
  backgroundColor: string,
  @optional
  backgroundImage: string,
  @optional
  backgroundPosition: string,
  @optional
  backgroundRepeat: string,
  @optional
  border: string,
  @optional
  borderCollapse: string,
  @optional
  borderColor: string,
  @optional
  borderSpacing: string,
  @optional
  borderStyle: string,
  @optional
  borderTop: string,
  @optional
  borderRight: string,
  @optional
  borderBottom: string,
  @optional
  borderLeft: string,
  @optional
  borderTopColor: string,
  @optional
  borderRightColor: string,
  @optional
  borderBottomColor: string,
  @optional
  borderLeftColor: string,
  @optional
  borderTopStyle: string,
  @optional
  borderRightStyle: string,
  @optional
  borderBottomStyle: string,
  @optional
  borderLeftStyle: string,
  @optional
  borderTopWidth: string,
  @optional
  borderRightWidth: string,
  @optional
  borderBottomWidth: string,
  @optional
  borderLeftWidth: string,
  @optional
  borderWidth: string,
  @optional
  bottom: string,
  @optional
  captionSide: string,
  @optional
  clear: string,
  @optional
  clip: string,
  @optional
  color: string,
  @optional
  content: string,
  @optional
  counterIncrement: string,
  @optional
  counterReset: string,
  @optional
  cue: string,
  @optional
  cueAfter: string,
  @optional
  cueBefore: string,
  @optional
  cursor: string,
  @optional
  direction: string,
  @optional
  display: string,
  @optional
  elevation: string,
  @optional
  emptyCells: string,
  @optional
  float: string,
  @optional
  font: string,
  @optional
  fontFamily: string,
  @optional
  fontSize: string,
  @optional
  fontSizeAdjust: string,
  @optional
  fontStretch: string,
  @optional
  fontStyle: string,
  @optional
  fontVariant: string,
  @optional
  fontWeight: string,
  @optional
  height: string,
  @optional
  left: string,
  @optional
  letterSpacing: string,
  @optional
  lineHeight: string,
  @optional
  listStyle: string,
  @optional
  listStyleImage: string,
  @optional
  listStylePosition: string,
  @optional
  listStyleType: string,
  @optional
  margin: string,
  @optional
  marginTop: string,
  @optional
  marginRight: string,
  @optional
  marginBottom: string,
  @optional
  marginLeft: string,
  @optional
  markerOffset: string,
  @optional
  marks: string,
  @optional
  maxHeight: string,
  @optional
  maxWidth: string,
  @optional
  minHeight: string,
  @optional
  minWidth: string,
  @optional
  orphans: string,
  @optional
  outline: string,
  @optional
  outlineColor: string,
  @optional
  outlineStyle: string,
  @optional
  outlineWidth: string,
  @optional
  overflow: string,
  @optional
  overflowX: string,
  @optional
  overflowY: string,
  @optional
  padding: string,
  @optional
  paddingTop: string,
  @optional
  paddingRight: string,
  @optional
  paddingBottom: string,
  @optional
  paddingLeft: string,
  @optional
  page: string,
  @optional
  pageBreakAfter: string,
  @optional
  pageBreakBefore: string,
  @optional
  pageBreakInside: string,
  @optional
  pause: string,
  @optional
  pauseAfter: string,
  @optional
  pauseBefore: string,
  @optional
  pitch: string,
  @optional
  pitchRange: string,
  @optional
  playDuring: string,
  @optional
  position: string,
  @optional
  quotes: string,
  @optional
  richness: string,
  @optional
  right: string,
  @optional
  size: string,
  @optional
  speak: string,
  @optional
  speakHeader: string,
  @optional
  speakNumeral: string,
  @optional
  speakPunctuation: string,
  @optional
  speechRate: string,
  @optional
  stress: string,
  @optional
  tableLayout: string,
  @optional
  textAlign: string,
  @optional
  textDecoration: string,
  @optional
  textIndent: string,
  @optional
  textShadow: string,
  @optional
  textTransform: string,
  @optional
  top: string,
  @optional
  unicodeBidi: string,
  @optional
  verticalAlign: string,
  @optional
  visibility: string,
  @optional
  voiceFamily: string,
  @optional
  volume: string,
  @optional
  whiteSpace: string,
  @optional
  widows: string,
  @optional
  width: string,
  @optional
  wordSpacing: string,
  @optional
  zIndex: string,
  @optional
  opacity: /* Below properties based on https://www.w3.org/Style/CSS/all-properties */
  /* Color Level 3 - REC */
  string,
  @optional
  backgroundOrigin: /* Backgrounds and Borders Level 3 - CR */
  /* backgroundRepeat - already defined by CSS2Properties */
  /* backgroundAttachment - already defined by CSS2Properties */
  string,
  @optional
  backgroundSize: string,
  @optional
  backgroundClip: string,
  @optional
  borderRadius: string,
  @optional
  borderTopLeftRadius: string,
  @optional
  borderTopRightRadius: string,
  @optional
  borderBottomLeftRadius: string,
  @optional
  borderBottomRightRadius: string,
  @optional
  borderImage: string,
  @optional
  borderImageSource: string,
  @optional
  borderImageSlice: string,
  @optional
  borderImageWidth: string,
  @optional
  borderImageOutset: string,
  @optional
  borderImageRepeat: string,
  @optional
  boxShadow: string,
  @optional
  columns: /* Multi-column Layout - CR */
  string,
  @optional
  columnCount: string,
  @optional
  columnFill: string,
  @optional
  columnGap: string,
  @optional
  columnRule: string,
  @optional
  columnRuleColor: string,
  @optional
  columnRuleStyle: string,
  @optional
  columnRuleWidth: string,
  @optional
  columnSpan: string,
  @optional
  columnWidth: string,
  @optional
  breakAfter: string,
  @optional
  breakBefore: string,
  @optional
  breakInside: string,
  @optional
  rest: /* Speech - CR */
  string,
  @optional
  restAfter: string,
  @optional
  restBefore: string,
  @optional
  speakAs: string,
  @optional
  voiceBalance: string,
  @optional
  voiceDuration: string,
  @optional
  voicePitch: string,
  @optional
  voiceRange: string,
  @optional
  voiceRate: string,
  @optional
  voiceStress: string,
  @optional
  voiceVolume: string,
  @optional
  objectFit: /* Image Values and Replaced Content Level 3 - CR */
  string,
  @optional
  objectPosition: string,
  @optional
  imageResolution: string,
  @optional
  imageOrientation: string,
  @optional
  alignContent: /* Flexible Box Layout - CR */
  string,
  @optional
  alignItems: string,
  @optional
  alignSelf: string,
  @optional
  flex: string,
  @optional
  flexBasis: string,
  @optional
  flexDirection: string,
  @optional
  flexFlow: string,
  @optional
  flexGrow: string,
  @optional
  flexShrink: string,
  @optional
  flexWrap: string,
  @optional
  justifyContent: string,
  @optional
  order: string,
  @optional
  textDecorationColor: /* Text Decoration Level 3 - CR */
  /* textDecoration - already defined by CSS2Properties */
  string,
  @optional
  textDecorationLine: string,
  @optional
  textDecorationSkip: string,
  @optional
  textDecorationStyle: string,
  @optional
  textEmphasis: string,
  @optional
  textEmphasisColor: string,
  @optional
  textEmphasisPosition: string,
  @optional
  textEmphasisStyle: string,
  @optional
  textUnderlinePosition: /* textShadow - already defined by CSS2Properties */
  string,
  @optional
  fontFeatureSettings: /* Fonts Level 3 - CR */
  string,
  @optional
  fontKerning: string,
  @optional
  fontLanguageOverride: string,
  @optional
  fontSynthesis: /* fontSizeAdjust - already defined by CSS2Properties */
  /* fontStretch - already defined by CSS2Properties */
  string,
  @optional
  forntVariantAlternates: string,
  @optional
  fontVariantCaps: string,
  @optional
  fontVariantEastAsian: string,
  @optional
  fontVariantLigatures: string,
  @optional
  fontVariantNumeric: string,
  @optional
  fontVariantPosition: string,
  @optional
  all: /* Cascading and Inheritance Level 3 - CR */
  string,
  @optional
  textCombineUpright: string,
  @optional
  textOrientation: string,
  @optional
  writingMode: string,
  @optional
  shapeImageThreshold: /* Shapes Level 1 - CR */
  string,
  @optional
  shapeMargin: string,
  @optional
  shapeOutside: string,
  @optional
  clipRule: string,
  @optional
  mask: string,
  @optional
  maskBorder: string,
  @optional
  maskBorderMode: string,
  @optional
  maskBorderOutset: string,
  @optional
  maskBorderRepeat: string,
  @optional
  maskBorderSlice: string,
  @optional
  maskBorderSource: string,
  @optional
  maskBorderWidth: string,
  @optional
  maskClip: string,
  @optional
  maskComposite: string,
  @optional
  maskImage: string,
  @optional
  maskMode: string,
  @optional
  maskOrigin: string,
  @optional
  maskPosition: string,
  @optional
  maskRepeat: string,
  @optional
  maskSize: string,
  @optional
  maskType: string,
  @optional
  backgroundBlendMode: /* Compositing and Blending Level 1 - CR */
  string,
  @optional
  isolation: string,
  @optional
  mixBlendMode: string,
  @optional
  boxDecorationBreak: /* Fragmentation Level 3 - CR */
  string,
  @optional
  boxSizing: /* breakAfter - already defined by Multi-column Layout */
  /* breakBefore - already defined by Multi-column Layout */
  /* breakInside - already defined by Multi-column Layout */
  /* Basic User Interface Level 3 - CR */
  string,
  @optional
  caretColor: string,
  @optional
  navDown: string,
  @optional
  navLeft: string,
  @optional
  navRight: string,
  @optional
  navUp: string,
  @optional
  outlineOffset: string,
  @optional
  resize: string,
  @optional
  textOverflow: string,
  @optional
  grid: /* Grid Layout Level 1 - CR */
  string,
  @optional
  gridArea: string,
  @optional
  gridAutoColumns: string,
  @optional
  gridAutoFlow: string,
  @optional
  gridAutoRows: string,
  @optional
  gridColumn: string,
  @optional
  gridColumnEnd: string,
  @optional
  gridColumnGap: string,
  @optional
  gridColumnStart: string,
  @optional
  gridGap: string,
  @optional
  gridRow: string,
  @optional
  gridRowEnd: string,
  @optional
  gridRowGap: string,
  @optional
  gridRowStart: string,
  @optional
  gridTemplate: string,
  @optional
  gridTemplateAreas: string,
  @optional
  gridTemplateColumns: string,
  @optional
  gridTemplateRows: string,
  @optional
  willChange: /* Will Change Level 1 - CR */
  string,
  @optional
  hangingPunctuation: /* Text Level 3 - LC */
  string,
  @optional
  hyphens: string,
  @optional
  lineBreak: /* letterSpacing - already defined by CSS2Properties */
  string,
  @optional
  overflowWrap: string,
  @optional
  tabSize: string,
  @optional
  textAlignLast: /* textAlign - already defined by CSS2Properties */
  string,
  @optional
  textJustify: string,
  @optional
  wordBreak: string,
  @optional
  wordWrap: string,
  @optional
  animation: /* Animations - WD */
  string,
  @optional
  animationDelay: string,
  @optional
  animationDirection: string,
  @optional
  animationDuration: string,
  @optional
  animationFillMode: string,
  @optional
  animationIterationCount: string,
  @optional
  animationName: string,
  @optional
  animationPlayState: string,
  @optional
  animationTimingFunction: string,
  @optional
  transition: /* Transitions - WD */
  string,
  @optional
  transitionDelay: string,
  @optional
  transitionDuration: string,
  @optional
  transitionProperty: string,
  @optional
  transitionTimingFunction: string,
  @optional
  backfaceVisibility: @optional
  /* Transforms Level 1 - WD */

  string,
  @optional
  perspective: string,
  @optional
  perspectiveOrigin: string,
  @optional
  transform: string,
  @optional
  transformOrigin: string,
  @optional
  transformStyle: string,
  @optional
  justifyItems: /* Box Alignment Level 3 - WD */
  /* alignContent - already defined by Flexible Box Layout */
  /* alignItems - already defined by Flexible Box Layout */
  string,
  @optional
  justifySelf: string,
  @optional
  placeContent: string,
  @optional
  placeItems: string,
  @optional
  placeSelf: string,
  @optional
  appearance: /* Basic User Interface Level 4 - FPWD */
  string,
  @optional
  caret: string,
  @optional
  caretAnimation: string,
  @optional
  caretShape: string,
  @optional
  userSelect: string,
  @optional
  maxLines: /* Overflow Level 3 - WD */
  string,
  @optional
  marqueeDirection: /* Basix Box Model - WD */
  string,
  @optional
  marqueeLoop: string,
  @optional
  marqueeSpeed: string,
  @optional
  marqueeStyle: string,
  @optional
  overflowStyle: string,
  @optional
  rotation: string,
  @optional
  rotationPoint: string,
  @optional
  alignmentBaseline: /* SVG 1.1 - REC */
  string,
  @optional
  baselineShift: string,
  @optional
  clipPath: string,
  @optional
  colorInterpolation: string,
  @optional
  colorInterpolationFilters: string,
  @optional
  colorProfile: string,
  @optional
  colorRendering: string,
  @optional
  dominantBaseline: string,
  @optional
  fill: string,
  @optional
  fillOpacity: string,
  @optional
  fillRule: string,
  @optional
  filter: string,
  @optional
  floodColor: string,
  @optional
  floodOpacity: string,
  @optional
  glyphOrientationHorizontal: string,
  @optional
  glyphOrientationVertical: string,
  @optional
  imageRendering: string,
  @optional
  kerning: string,
  @optional
  lightingColor: string,
  @optional
  markerEnd: string,
  @optional
  markerMid: string,
  @optional
  markerStart: string,
  @optional
  pointerEvents: string,
  @optional
  shapeRendering: string,
  @optional
  stopColor: string,
  @optional
  stopOpacity: string,
  @optional
  stroke: string,
  @optional
  strokeDasharray: string,
  @optional
  strokeDashoffset: string,
  @optional
  strokeLinecap: string,
  @optional
  strokeLinejoin: string,
  @optional
  strokeMiterlimit: string,
  @optional
  strokeOpacity: string,
  @optional
  strokeWidth: string,
  @optional
  textAnchor: string,
  @optional
  textRendering: string,
  @optional
  rubyAlign: /* Ruby Layout Level 1 - WD */
  string,
  @optional
  rubyMerge: string,
  @optional
  rubyPosition: string,
}


@obj
external make: (
  ~azimuth: string=?,
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
