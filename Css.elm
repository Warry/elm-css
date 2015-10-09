module Css
  ( none,inherit,initial,CssProperty,CssColor,Duration
  , Size,px,pr,em,sec,ms
  , background,backgroundAttachment,backgroundColor,backgroundImage,backgroundPosition,backgroundRepeat,backgroundClip,backgroundOrigin,backgroundSize,backgroundSizes
  , border,borderTop,borderRight,borderBottom,borderLeft,borderColor,borderTopColor,borderBottomColor,borderRightColor,borderLeftColor,borderWidth,borderTopWidth,borderRightWidth,borderBottomWidth,borderLeftWidth,borderStyle,borderTopStyle,borderRightStyle,borderBottomStyle,borderLeftStyle,borderImage,borderImageOutset,borderImageRepeat,borderImageSlice,borderImageSource,borderImageWidth
  , borderRadius,borderTopLeftRadius,borderTopRightRadius,borderBottomRightRadius,borderBottomLeftRadius
  , boxShadow,boxShadows
  , top,right,bottom,left,width,minWidth,maxWidth,height,minHeight,maxHeight,clear,clip,display,float,overflow,overflowX,overflowY,margin,marginBottom,marginLeft,marginRight,marginTop,margin2,margin3,margin4,padding,paddingBottom,paddingLeft,paddingRight,paddingTop,padding2,padding3,padding4,position,visibility,verticalAlign,zIndex
  , alignContent,alignItems,alignSelf,flex,flexBasis,flexDirection,flexFlow,flexGrow,flexShrink,flexWrap,justifyContent,order
  , letterSpacing,lineHeight,tabSize,textAlign,textAlignLast,textIndent,textJustify,textTransform,whiteSpace,wordBreak,wordWrap,textDecoration,textDecorationColor,textDecorationLine,textDecoration,textDecorationColor,textDecorationLine,textDecorationStyle,textShadow
  , font,fonts,color,fontFamily,fontSize,fontSizes,fontStyle,fontVariant,fontWeight,fontWeights,fontSizeAdjust,fontStretch,wordSpacing
  , direction,unicodeBidi
  , borderCollapse,borderSpacing,captionSide,emptyCells,tableLayout
  , counterIncrement,counterReset,counterResetAt,listStyle,listStyleImage,listStylePosition,listStyleType
  , animation,animationDelay,animationDirection,animationDuration,animationFillMode,animationIterationCount,animationName,animationTimingFunction,animationPlayState,animationInfinite
  , backfaceVisibility,perspective,perspectiveOrigin,transform,transformOrigin,transformStyle
  , transition,transitionProperty,transitionDuration,transitionTimingFunction,transitionDelay,transitionAll
  , boxSizing,cursor,outline,outlineColor,outlineOffset,outlineStyle,outlineWidth,resize,textOverflow,outlineInvert,outlineWidths
  , columnCount,columnGap,columnRule,columnRuleColor,columnRuleStyle,columnRuleWidth,columnRuleWidths,columnSpan,columnWidth,columns
  , quotes
  ) where

{-| A set of helpers to create CSS properties.

    example : Html
    example state =
      div
        [ styles
          [ height (px 50)
          , background "#1C1F26"
          , color "#7A8092"
          ]
        ]
        [ text "Foo" ]

# Basics

@docs none,inherit,initial,CssProperty,CssColor,Duration

# Units

@docs Size,px,pr,em,sec,ms

# Functions

## Background
@docs background,backgroundAttachment,backgroundColor,backgroundImage,backgroundPosition,backgroundRepeat,backgroundClip,backgroundOrigin,backgroundSize,backgroundSizes

## Border
@docs border,borderTop,borderRight,borderBottom,borderLeft,borderColor,borderTopColor,borderBottomColor,borderRightColor,borderLeftColor,borderWidth,borderTopWidth,borderRightWidth,borderBottomWidth,borderLeftWidth,borderStyle,borderTopStyle,borderRightStyle,borderBottomStyle,borderLeftStyle,borderImage,borderImageOutset,borderImageRepeat,borderImageSlice,borderImageSource,borderImageWidth

## Border Radius
@docs borderRadius,borderTopLeftRadius,borderTopRightRadius,borderBottomRightRadius,borderBottomLeftRadius

## Box Shadow/Decoration
@docs boxShadow,boxShadows

## Box
@docs top,right,bottom,left,width,minWidth,maxWidth,height,minHeight,maxHeight,clear,clip,display,float,overflow,overflowX,overflowY,margin,marginBottom,marginLeft,marginRight,marginTop,margin2,margin3,margin4,padding,paddingBottom,paddingLeft,paddingRight,paddingTop,padding2,padding3,padding4,position,visibility,verticalAlign,zIndex

## Flex Box Model
@docs alignContent,alignItems,alignSelf,flex,flexBasis,flexDirection,flexFlow,flexGrow,flexShrink,flexWrap,justifyContent,order

@docs letterSpacing,lineHeight,tabSize,textAlign,textAlignLast,textIndent,textJustify,textTransform,whiteSpace,wordBreak,wordWrap,textDecoration,textDecorationColor,textDecorationLine,textDecoration,textDecorationColor,textDecorationLine,textDecorationStyle,textShadow

## Fonts
@docs font,fonts,color,fontFamily,fontSize,fontSizes,fontStyle,fontVariant,fontWeight,fontWeights,fontSizeAdjust,fontStretch,wordSpacing

@docs direction,unicodeBidi

## Tables
@docs borderCollapse,borderSpacing,captionSide,emptyCells,tableLayout

## Lists and Counters Properties
@docs counterIncrement,counterReset,counterResetAt,listStyle,listStyleImage,listStylePosition,listStyleType

## Animation Properties
@docs animation,animationDelay,animationDirection,animationDuration,animationFillMode,animationIterationCount,animationName,animationTimingFunction,animationPlayState,animationInfinite

## Transform Properties
@docs backfaceVisibility,perspective,perspectiveOrigin,transform,transformOrigin,transformStyle

## Transitions Properties
@docs transition,transitionProperty,transitionDuration,transitionTimingFunction,transitionDelay,transitionAll

## Basic User Interface Properties
@docs boxSizing,cursor,outline,outlineColor,outlineOffset,outlineStyle,outlineWidth,resize,textOverflow,outlineInvert,outlineWidths

## Multi-column Layout Properties
@docs columnCount,columnGap,columnRule,columnRuleColor,columnRuleStyle,columnRuleWidth,columnRuleWidths,columnSpan,columnWidth,columns

## Generated Content for Paged Media
@docs quotes
-}

import String
import List

{-| Tuple alias -}
type alias CssProperty = (String, String)

{-
## Utils
@docs durationToString,sizeToString,url,bdStyles,cubicBezier,ovStytles,shadowToString
-}

---- BASICS ----

-- Having to manage those for individual properties is a waste of Duration
-- Maybe I'm too lazy :)

{-| Set any property to "none" -}
none : String -> CssProperty
none p = (p, "none")

{-| Set any property to "inherit" -}
inherit : String -> CssProperty
inherit p = (p, "inherit")

{-| Set any property to "initial" -}
initial : String -> CssProperty
initial p = (p, "initial")

{-| Utils -}
url : String -> String
url u = "url(" ++ u ++ ")"

---- Units ----

{-| Size units -}
type Size
  = Pixel Int | Percent Float | Em Float | Auto
  -- | Ex Float | Ch Float | Rem Float
  -- | Mm Float | Cm Float | In Float | Pt Float | Pc Float

{-| Duration units -}
type Duration = MSec Float | Sec Float

{-| Pixel size -}
px : Int -> Size
px i = Pixel i

{-| Percent size -}
pr : Float -> Size
pr i = Percent i

{-| Em size -}
em : Float -> Size
em i = Em i

{-| Seconds for transitions and animations -}
sec : Float -> Duration
sec i = Sec i

{-| Milli-Seconds for transitions and animations -}
ms : Float -> Duration
ms i = MSec i

sizeToString : Size -> String
sizeToString s = case s of
  Pixel p   -> (toString p) ++ "px"
  Percent p -> (toString p) ++ "%"
  Em e      -> (toString e) ++ "em"
  Auto      -> "auto"
  -- Ex  s     -> (toString s) ++ "ex"
  -- Ch  s     -> (toString s) ++ "ch"
  -- Rem s     -> (toString s) ++ "rem"
  -- Mm  s     -> (toString s) ++ "mm"
  -- Cm  s     -> (toString s) ++ "cm"
  -- In  s     -> (toString s) ++ "in"
  -- Pt  s     -> (toString s) ++ "pt"
  -- Pc  s     -> (toString s) ++ "pc"

durationToString : Duration -> String
durationToString t = case t of
  MSec p  -> (toString p) ++ "ms"
  Sec p   -> (toString p) ++ "s"

---- COLORS ----

{-| Color alias -}
type alias CssColor = String

{-| Sets the background color of an element CSS#1 -}
color : CssColor -> CssProperty
color = (,) "color"

---- BACKGROUND ----

{-| Sets all the background properties in one declaration CSS#1 -}
background : String -> CssProperty
background = (,) "background"

{-| Sets whether a background image is fixed or scrolls with the rest of the page CSS#1 -}
backgroundAttachment :
    { fixed : CssProperty
    , local : CssProperty
    , scroll : CssProperty
    }
backgroundAttachment =
  { scroll = (,) "background-attachment" "scroll"
  , fixed  = (,) "background-attachment" "fixed"
  , local  = (,) "background-attachment" "local"
  }

{-| Sets the background color of an element CSS#1 -}
backgroundColor : CssColor -> CssProperty
backgroundColor = (,) "background-color"

{-| Sets the background image for an element - CSS#1 -}
backgroundImage : String -> CssProperty
backgroundImage = (,) "background-image" << url

{-| Sets the starting position of a background image - CSS#1 -}
backgroundPosition :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
backgroundPosition =
  { center          = (,) "background-position" "center"
  , centerLeft      = (,) "background-position" "left center"
  , centerRight     = (,) "background-position" "right center"
  , topLeft         = (,) "background-position" "left top"
  , topRight        = (,) "background-position" "right top"
  , topCenter       = (,) "background-position" "center top"
  , bottomLeft      = (,) "background-position" "left bottom"
  , bottomRight     = (,) "background-position" "right bottom"
  , bottomCenter    = (,) "background-position" "center bottom"
  , custom          = (,) "background-position"
  }

{-| Sets how a background image will be repeated - CSS#1 -}
backgroundRepeat :
    { noRepeat : CssProperty
    , repeat : CssProperty
    , repeatX : CssProperty
    , repeatY : CssProperty
    }
backgroundRepeat =
  { repeat          = (,) "background-repeat" "repeat"
  , repeatX         = (,) "background-repeat" "repeat-x"
  , repeatY         = (,) "background-repeat" "repeat-y"
  , noRepeat        = (,) "background-repeat" "no-repeat"
  }

{-| Specifies the painting area of the background - CSS#3 -}
backgroundClip :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
backgroundClip =
  { borderBox       = (,) "background-clip" "border-box"
  , paddingBox      = (,) "background-clip" "padding-box"
  , contentBox      = (,) "background-clip" "content-box"
  }

{-| Specifies the positioning area of the background images - CSS#3 -}
backgroundOrigin :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
backgroundOrigin =
  { paddingBox      = (,) "background-origin" "padding-box"
  , borderBox       = (,) "background-origin" "border-box"
  , contentBox      = (,) "background-origin" "content-box"
  }

{-| Specifies the size of the background images - CSS#3 -}
backgroundSize : Size -> CssProperty
backgroundSize = (,) "background-size" << sizeToString

{-| Predefined background sizes - CSS#3 -}
backgroundSizes :
    { auto : CssProperty
    , contain : CssProperty
    , cover : CssProperty
    }
backgroundSizes =
  { auto            = (,) "background-size" "auto"
  , cover           = (,) "background-size" "cover"
  , contain         = (,) "background-size" "contain"
  }

---- BORDER ----

{-| Sets all the border properties in one declaration CSS#1 -}
border : String -> CssProperty
border = (,) "border"

{-| Sets all the top border properties in one declaration CSS#1 -}
borderTop : String -> CssProperty
borderTop = (,) "border-top"

{-| Sets all the right border properties in one declaration CSS#1 -}
borderRight : String -> CssProperty
borderRight = (,) "border-right"

{-| Sets all the bottom border properties in one declaration - CSS#1 -}
borderBottom : String -> CssProperty
borderBottom = (,) "border-bottom"

{-| Sets all the left border properties in one declaration - CSS#1 -}
borderLeft : String -> CssProperty
borderLeft = (,) "border-left"

{-| Sets the color of the four borders - CSS#1 -}
borderColor : CssColor -> CssProperty
borderColor = (,) "border-color"

{-| Sets the color of the top border - CSS#1 -}
borderTopColor : CssColor -> CssProperty
borderTopColor = (,) "border-top-color"

{-| Sets the color of the bottom border CSS#1  -}
borderBottomColor : CssColor -> CssProperty
borderBottomColor = (,) "border-bottom-color"

{-| Sets the color of the right border - CSS#1 -}
borderRightColor : CssColor -> CssProperty
borderRightColor = (,) "border-right-color"

{-| Sets the color of the left border CSS#1 -}
borderLeftColor : CssColor -> CssProperty
borderLeftColor = (,) "border-left-color"

{-| Sets the width of the four borders - CSS#1 -}
borderWidth : Size -> CssProperty
borderWidth = (,) "border-width" << sizeToString

{-| Sets the width of the top border - CSS#1 -}
borderTopWidth : Size -> CssProperty
borderTopWidth = (,) "border-top-width" << sizeToString

{-| Sets the width of the right border - CSS#1 -}
borderRightWidth : Size -> CssProperty
borderRightWidth = (,) "border-right-width" << sizeToString

{-| Sets the width of the bottom border CSS#1 -}
borderBottomWidth : Size -> CssProperty
borderBottomWidth = (,) "border-bottom-width" << sizeToString

{-| Sets the width of the left border CSS#1 -}
borderLeftWidth : Size -> CssProperty
borderLeftWidth = (,) "border-left-width" << sizeToString

{-| Alias -}
type alias BorderStyle =
  { dashed : CssProperty
  , none : CssProperty
  , dotted : CssProperty
  , double : CssProperty
  , groove : CssProperty
  , hidden : CssProperty
  , inset : CssProperty
  , outset : CssProperty
  , ridge : CssProperty
  , solid : CssProperty
  }

bdStyles : String -> BorderStyle
bdStyles p =
  { none   = (,) p "none"
  , hidden = (,) p "hidden"
  , dotted = (,) p "dotted"
  , dashed = (,) p "dashed"
  , solid  = (,) p "solid"
  , double = (,) p "double"
  , groove = (,) p "groove"
  , ridge  = (,) p "ridge"
  , inset  = (,) p "inset"
  , outset = (,) p "outset"
  }

{-| Sets the style of the four borders - CSS#1 -}
borderStyle : BorderStyle
borderStyle = bdStyles "border-style"

{-| Sets the style of the top border - CSS#1 -}
borderTopStyle : BorderStyle
borderTopStyle = bdStyles "border-top-style"

{-| Sets the style of the right border - CSS#1 -}
borderRightStyle : BorderStyle
borderRightStyle = bdStyles "border-right-style"

{-| Sets the style of the bottom border CSS#1 -}
borderBottomStyle : BorderStyle
borderBottomStyle = bdStyles "border-bottom-style"

{-| Sets the style of the left border CSS#1 -}
borderLeftStyle : BorderStyle
borderLeftStyle = bdStyles "border-left-style"

{-| A shorthand property for setting all the border-image-* properties - CSS#3 -}
borderImage : String -> CssProperty
borderImage = (,) "border-image"

{-| Specifies an image to be used as a border - CSS#3 -}
borderImageSource : String -> CssProperty
borderImageSource = (,) "border-image-source" << url

{-| Specifies the amount by which the border image area extends beyond the border box - CSS#3 -}
borderImageOutset : Size -> CssProperty
borderImageOutset = (,) "border-image-outset" << sizeToString

{-| Specifies whether the image-border should be repeated, rounded or stretched - CSS#3 -}
borderImageRepeat :
    { repeat : CssProperty
    , round : CssProperty
    , stretch : CssProperty
    }
borderImageRepeat =
  { stretch = (,) "border-image-repeat" "stretch"
  , repeat  = (,) "border-image-repeat" "repeat"
  , round   = (,) "border-image-repeat" "round"
  }

{-| Specifies the inward offsets of the image-border - CSS#3 -}
borderImageSlice : Int -> CssProperty
borderImageSlice = (,) "border-image-slice" << toString

{-| Specifies the widths of the image-border - CSS#3 -}
borderImageWidth : Size -> CssProperty
borderImageWidth = (,) "border-image-width" << sizeToString

---- BORDER RADIUS ----

{-| A shorthand property for setting all the four border-*-radius properties - CSS#3 -}
borderRadius : Size -> CssProperty
borderRadius = (,) "border-radius" << sizeToString

{-| Defines the shape of the border of the top-left corner - CSS#3 -}
borderTopLeftRadius : Size -> CssProperty
borderTopLeftRadius = (,) "border-top-left-radius" << sizeToString

{-| Defines the shape of the border of the top-right corner - CSS#3 -}
borderTopRightRadius : Size -> CssProperty
borderTopRightRadius = (,) "border-top-right-radius" << sizeToString

{-| Defines the shape of the border of the bottom-right corner - CSS#3 -}
borderBottomRightRadius : Size -> CssProperty
borderBottomRightRadius = (,) "border-bottom-right-radius" << sizeToString

{-| Defines the shape of the border of the bottom-left corner - CSS#3 -}
borderBottomLeftRadius : Size -> CssProperty
borderBottomLeftRadius = (,) "border-bottom-left-radius" << sizeToString

---- BOX SHADOW ----

{-| Attaches one drop-shadow to the box - CSS#3 -}
boxShadow : Size -> Size -> Size -> CssColor -> CssProperty
boxShadow x y b c = (,) "box-shadow" (shadowToString (x, y, b, c, False))

-- x y size color inset?
type alias Shadow = (Size, Size, Size, CssColor, Bool)

{-| Attaches multiple drop-shadowZ to the box - CSS#3 -}
boxShadows : List Shadow -> CssProperty
boxShadows l = (,) "box-shadow" (String.join ", " (List.map shadowToString l))

{-| Utils -}
shadowToString : Shadow -> String
shadowToString (x,y,b,c,i) =
  (sizeToString x) ++ " "
  ++ (sizeToString y) ++ " "
  ++ (sizeToString b) ++ " "
  ++ c
  ++ (if i then " inset" else "")

---- BOX ----

{-| Specifies the top position of a positioned element - CSS#2 -}
top : Size -> CssProperty
top = (,) "top" << sizeToString

{-| Specifies the right position of a positioned element - CSS#2 -}
right : Size -> CssProperty
right = (,) "right" << sizeToString

{-| Specifies the bottom position of a positioned element - CSS#2 -}
bottom : Size -> CssProperty
bottom = (,) "bottom" << sizeToString

{-| Specifies the left position of a positioned element - CSS#2 -}
left : Size -> CssProperty
left = (,) "left" << sizeToString

{-| Sets the width of an element - CSS#1 -}
width : Size -> CssProperty
width = (,) "width" << sizeToString

{-| Sets the minimum width of an element - CSS#2 -}
minWidth : Size -> CssProperty
minWidth = (,) "min-width" << sizeToString

{-| Sets the maximum width of an element - CSS#2 -}
maxWidth : Size -> CssProperty
maxWidth = (,) "max-width" << sizeToString

{-| Sets the height of an element CSS#1 -}
height : Size -> CssProperty
height = (,) "height" << sizeToString

{-| Sets the minimum height of an element - CSS#2 -}
minHeight : Size -> CssProperty
minHeight = (,) "min-height" << sizeToString

{-| Sets the maximum height of an element - CSS#2 -}
maxHeight : Size -> CssProperty
maxHeight = (,) "max-height" << sizeToString

{-| Specifies which sides of an element where other floating elements are not allowed CSS#1 -}
clear :
    { both : CssProperty
    , left : CssProperty
    , none : CssProperty
    , right : CssProperty
    }
clear =
  { none            = (,) "clear" "none"
  , left            = (,) "clear" "left"
  , right           = (,) "clear" "right"
  , both            = (,) "clear" "both"
  }

{-| Clips an absolutely positioned element - CSS#2 -}
clip : Size -> Size -> Size -> Size -> CssProperty
clip t r b l = (,) "clip" ("rect(" ++ (String.join "," (List.map sizeToString [t,r,b,l])) ++ ")")

{-| Specifies how a certain HTML element should be displayed - CSS#1 -}
display :
    { block : CssProperty
    , flex : CssProperty
    , inline : CssProperty
    , inlineBlock : CssProperty
    , inlineFlex : CssProperty
    , inlineTable : CssProperty
    , listItem : CssProperty
    , none : CssProperty
    , runIn : CssProperty
    , table : CssProperty
    , tableCaption : CssProperty
    , tableCell : CssProperty
    , tableColumn : CssProperty
    , tableColumnGroup : CssProperty
    , tableFooterGroup : CssProperty
    , tableHeaderGroup : CssProperty
    , tableRow : CssProperty
    , tableRowGroup : CssProperty
    }
display =
  { inline            = (,) "display" "inline"
  , block             = (,) "display" "block"
  , flex              = (,) "display" "flex"
  , inlineBlock       = (,) "display" "inline-block"
  , inlineFlex        = (,) "display" "inline-flex"
  , inlineTable       = (,) "display" "inline-table"
  , listItem          = (,) "display" "list-item"
  , runIn             = (,) "display" "run-in"
  , table             = (,) "display" "table"
  , tableCaption      = (,) "display" "table-caption"
  , tableColumnGroup  = (,) "display" "table-column-group"
  , tableHeaderGroup  = (,) "display" "table-header-group"
  , tableFooterGroup  = (,) "display" "table-footer-group"
  , tableRowGroup     = (,) "display" "table-row-group"
  , tableCell         = (,) "display" "table-cell"
  , tableColumn       = (,) "display" "table-column"
  , tableRow          = (,) "display" "table-row"
  , none              = (,) "display" "none"
  }

{-| Specifies whether or not a box should float CSS#1 -}
float :
    { left : CssProperty
    , none : CssProperty
    , right : CssProperty
    }
float =
  { none            = (,) "float" "none"
  , left            = (,) "float" "left"
  , right           = (,) "float" "right"
  }

type alias OverflowStyles =
    { auto : CssProperty
    , hidden : CssProperty
    , scroll : CssProperty
    , visible : CssProperty
    }

{-| Utils -}
ovStytles : String -> OverflowStyles
ovStytles p =
  { visible         = (,) p "visible"
  , hidden          = (,) p "hidden"
  , scroll          = (,) p "scroll"
  , auto            = (,) p "auto"
  }

{-| Specifies what happens if content overflows an element's box - CSS#2 -}
overflow : OverflowStyles
overflow = ovStytles "overflow"

{-| Specifies whether or not to clip the left/right edges of the content,
    if it overflows the element's content area - CSS#3 -}
overflowX : OverflowStyles
overflowX = ovStytles "overflow-x"

{-| Specifies whether or not to clip the top/bottom edges of the content,
    if it overflows the element's content area - CSS#3 -}
overflowY : OverflowStyles
overflowY = ovStytles "overflow-y"

{-| Sets all the margin properties in one declaration - CSS#1 -}
margin : Size -> CssProperty
margin = (,) "margin" << sizeToString

{-| margin: top/bottom left/right -}
margin2 : Size -> Size -> CssProperty
margin2 x y = (,) "margin" (String.join " " (List.map sizeToString [x,y]))

{-| margin : top left/right bottom -}
margin3 : Size -> Size -> Size -> CssProperty
margin3 x y z = (,) "margin" (String.join " " (List.map sizeToString [x,y,z]))

{-| margin : top bottom left right -}
margin4 : Size -> Size -> Size -> Size -> CssProperty
margin4 w x y z = (,) "margin" (String.join " " (List.map sizeToString [w,x,y,z]))

{-| Sets the bottom margin of an element CSS#1 -}
marginBottom : Size -> CssProperty
marginBottom = (,) "margin-bottom" << sizeToString

{-| Sets the left margin of an element CSS#1 -}
marginLeft : Size -> CssProperty
marginLeft = (,) "margin-left" << sizeToString

{-| Sets the right margin of an element - CSS#1 -}
marginRight : Size -> CssProperty
marginRight = (,) "margin-right" << sizeToString

{-| Sets the top margin of an element - CSS#1 -}
marginTop : Size -> CssProperty
marginTop = (,) "margin-top" << sizeToString

{-| Sets all the padding properties in one declaration - CSS#1 -}
padding : Size -> CssProperty
padding x = (,) "padding" (sizeToString x)

{-| padding: top/bottom left/right -}
padding2 : Size -> Size -> CssProperty
padding2 x y = (,) "padding" (String.join " " (List.map sizeToString [x,y]))

{-| padding : top left/right bottom -}
padding3 : Size -> Size -> Size -> CssProperty
padding3 x y z = (,) "padding" (String.join " " (List.map sizeToString [x,y,z]))

{-| padding : top bottom left right -}
padding4 : Size -> Size -> Size -> Size -> CssProperty
padding4 w x y z = (,) "padding" (String.join " " (List.map sizeToString [w,x,y,z]))

{-| Sets the bottom padding of an element CSS#1 -}
paddingBottom : Size -> CssProperty
paddingBottom = (,) "padding-bottom" << sizeToString

{-| Sets the left padding of an element CSS#1 -}
paddingLeft : Size -> CssProperty
paddingLeft = (,) "padding-left" << sizeToString

{-| Sets the right padding of an element - CSS#1 -}
paddingRight : Size -> CssProperty
paddingRight = (,) "padding-right" << sizeToString

{-| Sets the top padding of an element - CSS#1 -}
paddingTop : Size -> CssProperty
paddingTop = (,) "padding-top" << sizeToString

{-| Specifies the type of positioning method used for an element
    (static, relative, absolute or fixed) - CSS#2 -}
position :
    { absolute : CssProperty
    , fixed : CssProperty
    , relative : CssProperty
    , static : CssProperty
    }
position =
  { static          = (,) "position" "static"
  , absolute        = (,) "position" "absolute"
  , fixed           = (,) "position" "fixed"
  , relative        = (,) "position" "relative"
  }

{-| Specifies whether or not an element is visible - CSS#2 -}
visibility :
    { collapse : CssProperty
    , hidden : CssProperty
    , visible : CssProperty
    }
visibility =
  { visible         = (,) "visibility" "visible"
  , hidden          = (,) "visibility" "hidden"
  , collapse        = (,) "visibility" "collapse"
  }

{-| Sets the vertical alignment of an element CSS#1 -}
verticalAlign :
    { baseline : CssProperty
    , bottom : CssProperty
    , length : CssProperty
    , middle : CssProperty
    , sub : CssProperty
    , super : CssProperty
    , textBottom : CssProperty
    , textTop : CssProperty
    , top : CssProperty
    }
verticalAlign =
  { baseline        = (,) "vertical-align" "baseline"
  , length          = (,) "vertical-align" "length"
  , sub             = (,) "vertical-align" "sub"
  , super           = (,) "vertical-align" "super"
  , top             = (,) "vertical-align" "top"
  , textTop         = (,) "vertical-align" "text-top"
  , middle          = (,) "vertical-align" "middle"
  , bottom          = (,) "vertical-align" "bottom"
  , textBottom      = (,) "vertical-align" "text-bottom"
  }

{-| Sets the stack order of a positioned element - CSS#2 -}
zIndex : Int -> CssProperty
zIndex = (,) "z-index" << toString

---- FLEX BOX MODEL ----

{-| Specifies the alignment between the lines inside a flexible container
    when the items do not use all available space. - CSS#3 -}
alignContent :
    { center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , spaceAround : CssProperty
    , spaceBetween : CssProperty
    , stretch : CssProperty
    }
alignContent =
  { stretch         = (,) "align-content" "stretch"
  , center          = (,) "align-content" "center"
  , flexStart       = (,) "align-content" "flex-start"
  , flexEnd         = (,) "align-content" "flex-end"
  , spaceBetween    = (,) "align-content" "space-between"
  , spaceAround     = (,) "align-content" "space-around"
  }

{-| Specifies the alignment for items inside a flexible container. - CSS#3 -}
alignItems :
    { baseline : CssProperty
    , center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , stretch : CssProperty
    }
alignItems =
  { stretch         = (,) "align-items" "stretch"
  , center          = (,) "align-items" "center"
  , flexStart       = (,) "align-items" "flex-start"
  , flexEnd         = (,) "align-items" "flex-end"
  , baseline        = (,) "align-items" "baseline"
  }

{-| Specifies the alignment for selected items inside a flexible container. - CSS#3 -}
alignSelf :
    { auto : CssProperty
    , baseline : CssProperty
    , center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , stretch : CssProperty
    }
alignSelf =
  { auto            = (,) "align-self" "auto"
  , stretch         = (,) "align-self" "stretch"
  , center          = (,) "align-self" "center"
  , flexStart       = (,) "align-self" "flex-start"
  , flexEnd         = (,) "align-self" "flex-end"
  , baseline        = (,) "align-self" "baseline"
  }

{-| Specifies the length of the item, relative to the rest - CSS#3 -}
flex :
    { auto : CssProperty
    , flexBasis : a -> CssProperty
    , flexGrow : b -> CssProperty
    , flexShrink : c -> CssProperty
    }
flex =
  { flexGrow        = \i -> (,) "flex" ("flex-grow(" ++ (toString i) ++ ")")
  , flexShrink      = \i -> (,) "flex" ("flex-shrink(" ++ (toString i) ++ ")")
  , flexBasis       = \i -> (,) "flex" ("flex-basis(" ++ (toString i) ++ ")")
  , auto            = (,) "flex" "auto"
  }

{-| Specifies the initial length of a flexible item - CSS#3 -}
flexBasis : Int -> CssProperty
flexBasis = (,) "flex-basis" << toString

{-| Specifies the direction of the flexible items - CSS#3 -}
flexDirection :
    { column : CssProperty
    , columnReverse : CssProperty
    , row : CssProperty
    , rowReverse : CssProperty
    }
flexDirection =
  { row             = (,) "flex-direction" "row"
  , rowReverse      = (,) "flex-direction" "row-reverse"
  , column          = (,) "flex-direction" "column"
  , columnReverse   = (,) "flex-direction" "column-reverse"
  }

{-| A shorthand property for the flex-direction and the flex-wrap properties - CSS#3 -}
flexFlow : String -> CssProperty
flexFlow = (,) "flex-flow"

{-| Specifies how much the item will grow relative to the rest - CSS#3 -}
flexGrow : Int -> CssProperty
flexGrow = (,) "flex-grow" << toString

{-| Specifies how the item will shrink relative to the rest - CSS#3 -}
flexShrink : Int -> CssProperty
flexShrink = (,) "flex-shrink" << toString

{-| Specifies whether the flexible items should wrap or not - CSS#3 -}
flexWrap :
    { nowrap : CssProperty
    , wrap : CssProperty
    , wrapReverse : CssProperty
    }
flexWrap =
  { nowrap          = (,) "flex-wrap" "nowrap"
  , wrap            = (,) "flex-wrap" "wrap"
  , wrapReverse     = (,) "flex-wrap" "wrap-reverse"
  }

{-| Specifies the alignment between the items inside a flexible container
    when the items do not use all available space. - CSS#3 -}
justifyContent :
    { center : CssProperty
    , flexEnd : CssProperty
    , flexStart : CssProperty
    , spaceAround : CssProperty
    , spaceBetween : CssProperty
    }
justifyContent =
  { flexStart       = (,) "justify-content" "flex-start"
  , flexEnd         = (,) "justify-content" "flex-end"
  , center          = (,) "justify-content" "center"
  , spaceBetween    = (,) "justify-content" "space-between"
  , spaceAround     = (,) "justify-content" "space-around"
  }

{-| Sets the order of the flexible item, relative to the rest - CSS#3 -}
order : Int -> CssProperty
order = (,) "order" << toString

---- FONTS & TEXT ----

{-| Increases or decreases the space between characters in a text CSS#1 -}
letterSpacing : Size -> CssProperty
letterSpacing = (,) "letter-spacing" << sizeToString

{-| Specifies the length of the tab-character - CSS#3 -}
lineHeight : Size -> CssProperty
lineHeight = (,) "line-height" << sizeToString

{-| Specifies the horizontal alignment of text (number of chars) - CSS#1 -}
tabSize : Int -> CssProperty
tabSize = (,) "tab-size" << toString

{-| Describes how the last line of a block or a line right before -}
textAlign :
    { center : CssProperty
    , justify : CssProperty
    , left : CssProperty
    , right : CssProperty
    }
textAlign =
  { left            = (,) "text-align" "left"
  , right           = (,) "text-align" "right"
  , center          = (,) "text-align" "center"
  , justify         = (,) "text-align" "justify"
  }

{-| a forced line break is aligned when text-align is "justify" - CSS#3 -}
textAlignLast :
    { auto : CssProperty
    , center : CssProperty
    , end : CssProperty
    , justify : CssProperty
    , left : CssProperty
    , right : CssProperty
    , start : CssProperty
    }
textAlignLast =
  { auto            = (,) "text-align-last" "auto"
  , left            = (,) "text-align-last" "left"
  , right           = (,) "text-align-last" "right"
  , center          = (,) "text-align-last" "center"
  , justify         = (,) "text-align-last" "justify"
  , start           = (,) "text-align-last" "start"
  , end             = (,) "text-align-last" "end"
  }

{-| Specifies the indentation of the first line in a text-block CSS#1 -}
textIndent : Int -> CssProperty
textIndent = (,) "text-indent" << toString

{-| Specifies the justification method used when text-align is "justify" - CSS#3 -}
textJustify :
    { auto : CssProperty
    , distribute : CssProperty
    , interCluster : CssProperty
    , interIdeograph : CssProperty
    , interWord : CssProperty
    , kashida : CssProperty
    , trim : CssProperty
    }
textJustify =
  { auto            = (,) "text-justify" "auto"
  , interWord       = (,) "text-justify" "inter-word"
  , interIdeograph  = (,) "text-justify" "inter-ideograph"
  , interCluster    = (,) "text-justify" "inter-cluster"
  , distribute      = (,) "text-justify" "distribute"
  , kashida         = (,) "text-justify" "kashida"
  , trim            = (,) "text-justify" "trim"
  }

{-| Controls the capitalization of text CSS#1 -}
textTransform :
    { capitalize : CssProperty
    , lowercase : CssProperty
    , none : CssProperty
    , uppercase : CssProperty
    }
textTransform =
  { none            = (,) "text-transform" "none"
  , capitalize      = (,) "text-transform" "capitalize"
  , uppercase       = (,) "text-transform" "uppercase"
  , lowercase       = (,) "text-transform" "lowercase"
  }

{-| Specifies how white-space inside an element is handled - CSS#1 -}
whiteSpace :
    { normal : CssProperty
    , nowrap : CssProperty
    , pre : CssProperty
    , preLine : CssProperty
    , preWrap : CssProperty
    }
whiteSpace =
  { normal          = (,) "white-space" "normal"
  , nowrap          = (,) "white-space" "nowrap"
  , pre             = (,) "white-space" "pre"
  , preLine         = (,) "white-space" "pre-line"
  , preWrap         = (,) "white-space" "pre-wrap"
  }

{-| Specifies line breaking rules for non-CJK scripts - CSS#3 -}
wordBreak :
    { breakAll : CssProperty
    , keepAll : CssProperty
    , normal : CssProperty
    }
wordBreak =
  { normal          = (,) "word-break" "normal"
  , breakAll        = (,) "word-break" "break-all"
  , keepAll         = (,) "word-break" "keep-all"
  }

{-| Increases or decreases the space between words in a text - CSS#1 -}
wordSpacing : Size -> CssProperty
wordSpacing = (,) "word-spacing" << sizeToString

{-| Allows long, unbreakable words to be broken and wrap to the next line - CSS#3 -}
wordWrap :
    { breakWord : CssProperty, normal : CssProperty }
wordWrap =
  { normal          = (,) "word-wrap" "normal"
  , breakWord       = (,) "word-wrap" "break-word"
  }

{-| Specifies the decoration added to text - CSS#1 -}
textDecoration :
    { lineThrough : CssProperty
    , none : CssProperty
    , overline : CssProperty
    , underline : CssProperty
    }
textDecoration =
  { none            = (,) "text-decoration" "none"
  , underline       = (,) "text-decoration" "underline"
  , overline        = (,) "text-decoration" "overline"
  , lineThrough     = (,) "text-decoration" "line-through"
  }

{-| Specifies the color of the text-decoration - CSS#3 -}
textDecorationColor : CssColor -> CssProperty
textDecorationColor = (,) "text-decoration-color"

{-| Specifies the type of line in a text-decoration - CSS#3 -}
textDecorationLine :
    { lineThrough : CssProperty
    , none : CssProperty
    , overline : CssProperty
    , underline : CssProperty
    }
textDecorationLine =
  { none            = (,) "text-decoration-line" "none"
  , underline       = (,) "text-decoration-line" "underline"
  , overline        = (,) "text-decoration-line" "overline"
  , lineThrough     = (,) "text-decoration-line" "line-through"
  }

{-| Specifies the style of the line in a text decoration - CSS#3 -}
textDecorationStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , solid : CssProperty
    , wavy : CssProperty
    }
textDecorationStyle =
  { solid           = (,) "text-decoration-style" "solid"
  , double          = (,) "text-decoration-style" "double"
  , dotted          = (,) "text-decoration-style" "dotted"
  , dashed          = (,) "text-decoration-style" "dashed"
  , wavy            = (,) "text-decoration-style" "wavy"
  }

{-| Adds shadow to text - CSS#3 -}
textShadow : Size -> Size -> Size -> CssColor -> CssProperty
textShadow x y b c = (,) "text-shadow" ((sizeToString x) ++ " " ++ (sizeToString y) ++ " " ++ (sizeToString b) ++ " " ++ (toString c))

{-| Sets all the font properties in one declaration CSS#1 -}
font : String -> CssProperty
font = (,) "font"

{-| Predifined fonts CSS#1 -}
fonts :
    { caption : CssProperty
    , icon : CssProperty
    , menu : CssProperty
    , messageBox : CssProperty
    , smallCaption : CssProperty
    , statusBar : CssProperty
    }
fonts =
  { caption         = (,) "font" "caption"
  , icon            = (,) "font" "icon"
  , menu            = (,) "font" "menu"
  , messageBox      = (,) "font" "message-box"
  , smallCaption    = (,) "font" "small-caption"
  , statusBar       = (,) "font" "status-bar"
  }

{-| Specifies the font family for text - CSS#1 -}
fontFamily : String -> CssProperty
fontFamily = (,) "font-family"

{-| Specifies the font size of text CSS#1 -}
fontSize : Size -> CssProperty
fontSize = (,) "font-size" << sizeToString

{-| Predefined sizes for the font CSS#1 -}
fontSizes :
    { large : CssProperty
    , larger : CssProperty
    , medium : CssProperty
    , small : CssProperty
    , smaller : CssProperty
    , xLarge : CssProperty
    , xSmall : CssProperty
    , xxLarge : CssProperty
    , xxSmall : CssProperty
    }
fontSizes =
  { medium          = (,) "font-size" "medium"
  , xxSmall         = (,) "font-size" "xx-small"
  , xSmall          = (,) "font-size" "x-small"
  , small           = (,) "font-size" "small"
  , large           = (,) "font-size" "large"
  , xLarge          = (,) "font-size" "x-large"
  , xxLarge         = (,) "font-size" "xx-large"
  , smaller         = (,) "font-size" "smaller"
  , larger          = (,) "font-size" "larger"
  }

{-| Specifies the font style for text CSS#1 -}
fontStyle :
    { italic : CssProperty
    , normal : CssProperty
    , oblique : CssProperty
    }
fontStyle =
  { normal          = (,) "font-style" "normal"
  , italic          = (,) "font-style" "italic"
  , oblique         = (,) "font-style" "oblique"
  }

{-| Specifies whether or not a text should be displayed in a small-caps font - CSS#1 -}
fontVariant :
    { normal : CssProperty, smallCaps : CssProperty }
fontVariant =
  { normal          = (,) "font-variant" "normal"
  , smallCaps       = (,) "font-variant" "small-caps"
  }

{-| Specifies the weight of a font - CSS#1 -}
fontWeight : Int -> CssProperty
fontWeight = (,) "font-weight" << toString

{-| Predifined font weights - CSS#1 -}
fontWeights :
    { bold : CssProperty
    , bolder : CssProperty
    , lighter : CssProperty
    , normal : CssProperty
    }
fontWeights =
  { normal          = (,) "font-weight" "normal"
  , bold            = (,) "font-weight" "bold"
  , bolder          = (,) "font-weight" "bolder"
  , lighter         = (,) "font-weight" "lighter"
  }

{-| Preserves the readability of text when font fallback occurs - CSS#3 -}
fontSizeAdjust : Size -> CssProperty
fontSizeAdjust = (,) "font-size-adjust" << sizeToString

{-| Selects a normal, condensed, or expanded face from a font family - CSS#3 -}
fontStretch :
    { condensed : CssProperty
    , expanded : CssProperty
    , extraCondensed : CssProperty
    , extraExpanded : CssProperty
    , normal : CssProperty
    , semiCondensed : CssProperty
    , semiExpanded : CssProperty
    , ultraCondensed : CssProperty
    , ultraExpanded : CssProperty
    }
fontStretch =
  { ultraCondensed  = (,) "font-stretch" "ultra-condensed"
  , extraCondensed  = (,) "font-stretch" "extra-condensed"
  , condensed       = (,) "font-stretch" "condensed"
  , semiCondensed   = (,) "font-stretch" "semi-condensed"
  , normal          = (,) "font-stretch" "normal"
  , semiExpanded    = (,) "font-stretch" "semi-expanded"
  , expanded        = (,) "font-stretch" "expanded"
  , extraExpanded   = (,) "font-stretch" "extra-expanded"
  , ultraExpanded   = (,) "font-stretch" "ultra-expanded"
  }

{-| Specifies the text direction/writing direction - CSS#2 -}
direction : { ltr : CssProperty, rtl : CssProperty }
direction =
  { ltr             = (,) "direction" "ltr"
  , rtl             = (,) "direction" "rtl"
  }

{-| Used together with the direction property to set or return whether
    the text should be overridden to support multiple languages in the same document - CSS#2 -}
unicodeBidi :
    { bidiOverride : CssProperty
    , embed : CssProperty
    , normal : CssProperty
    }
unicodeBidi =
  { normal          = (,) "unicode-bidi" "normal"
  , embed           = (,) "unicode-bidi" "embed"
  , bidiOverride    = (,) "unicode-bidi" "bidi-override"
  }

---- TABLES ----

{-| Specifies whether or not table borders should be collapsed - CSS#2 -}
borderCollapse :
    { collapse : CssProperty, separate : CssProperty }
borderCollapse =
  { separate        = (,) "border-collapse" "separate"
  , collapse        = (,) "border-collapse" "collapse"
  }

{-| Specifies the distance between the borders of adjacent cells - CSS#2 -}
borderSpacing : Size -> CssProperty
borderSpacing = (,) "border-spacing" << sizeToString

{-| Specifies the placement of a table caption - CSS#2 -}
captionSide : { bottom : CssProperty, top : CssProperty }
captionSide =
  { top             = (,) "caption-side" "top"
  , bottom          = (,) "caption-side" "bottom"
  }

{-| Specifies whether or not to display borders and background on empty cells in a table - CSS#2 -}
emptyCells : { hide : CssProperty, show : CssProperty }
emptyCells =
  { show            = (,) "empty-cells" "show"
  , hide            = (,) "empty-cells" "hide"
  }

{-| Sets the layout algorithm to be used for a table - CSS#2 -}
tableLayout : { auto : CssProperty, fixed : CssProperty }
tableLayout =
  { auto            = (,) "table-layout" "auto"
  , fixed           = (,) "table-layout" "fixed"
  }

---- LIST TYPES ----

{-| Increments one or more counters - CSS#2 -}
counterIncrement : String -> CssProperty
counterIncrement = (,) "counter-increment"

{-| Creates or resets one or more counters - CSS#2 -}
counterReset : String -> CssProperty
counterReset = (,) "counter-reset"

{-| Creates or resets a counter with an id - CSS#2 -}
counterResetAt : String -> Int -> CssProperty
counterResetAt id num = (,) "counter-reset" (id ++ " " ++ (toString num))

{-| Sets all the properties for a list in one declaration CSS#1 -}
listStyle : String -> CssProperty
listStyle = (,) "list-style"

{-| Specifies an image as the list-item marker - CSS#1 -}
listStyleImage : String -> CssProperty
listStyleImage = (,) "list-style-image" << url

{-| Specifies if the list-item markers should appear inside or outside the content flow CSS#1 -}
listStylePosition :
    { inside : CssProperty, outside : CssProperty }
listStylePosition =
  { inside          = (,) "list-style-position" "inside"
  , outside         = (,) "list-style-position" "outside"
  }

{-| Specifies the type of list-item marker - CSS#1 -}
listStyleType :
    { armenian : CssProperty
    , circle : CssProperty
    , cjkIdeographic : CssProperty
    , decimal : CssProperty
    , decimalLeadingZero : CssProperty
    , disc : CssProperty
    , georgian : CssProperty
    , hebrew : CssProperty
    , hiragana : CssProperty
    , hiraganaIroha : CssProperty
    , katakana : CssProperty
    , katakanaIroha : CssProperty
    , lowerAlpha : CssProperty
    , lowerGreek : CssProperty
    , lowerLatin : CssProperty
    , lowerRoman : CssProperty
    , none : CssProperty
    , square : CssProperty
    , upperAlpha : CssProperty
    , upperLatin : CssProperty
    , upperRoman : CssProperty
    }
listStyleType =
  { disc               = (,) "list-style-type" "disc"
  , armenian           = (,) "list-style-type" "armenian"
  , circle             = (,) "list-style-type" "circle"
  , cjkIdeographic     = (,) "list-style-type" "cjk-ideographic"
  , decimal            = (,) "list-style-type" "decimal"
  , decimalLeadingZero = (,) "list-style-type" "decimal-leading-zero"
  , georgian           = (,) "list-style-type" "georgian"
  , hebrew             = (,) "list-style-type" "hebrew"
  , hiragana           = (,) "list-style-type" "hiragana"
  , hiraganaIroha      = (,) "list-style-type" "hiragana-iroha"
  , katakana           = (,) "list-style-type" "katakana"
  , katakanaIroha      = (,) "list-style-type" "katakana-iroha"
  , lowerAlpha         = (,) "list-style-type" "lower-alpha"
  , lowerGreek         = (,) "list-style-type" "lower-greek"
  , lowerLatin         = (,) "list-style-type" "lower-latin"
  , lowerRoman         = (,) "list-style-type" "lower-roman"
  , none               = (,) "list-style-type" "none"
  , square             = (,) "list-style-type" "square"
  , upperAlpha         = (,) "list-style-type" "upper-alpha"
  , upperLatin         = (,) "list-style-type" "upper-latin"
  , upperRoman         = (,) "list-style-type" "upper-roman"
  }

---- ANIMATIONS & TRANSITIONS ----

{-| A shorthand property for all the animation properties below,
    except the animation-play-state property - CSS#3 -}
animation : String -> CssProperty
animation = (,) "animation"

{-| Specifies when the animation will start - CSS#3 -}
animationDelay : Duration -> CssProperty
animationDelay = (,) "animation-delay" << durationToString

{-| Specifies whether or not the animation should play in reverse on alternate cycles - CSS#3 -}
animationDirection :
    { alternate : CssProperty
    , alternateReverse : CssProperty
    , normal : CssProperty
    , reverse : CssProperty
    }
animationDirection =
  { normal           = (,) "animation-direction" "normal"
  , reverse          = (,) "animation-direction" "reverse"
  , alternate        = (,) "animation-direction" "alternate"
  , alternateReverse = (,) "animation-direction" "alternate-reverse"
  }

{-| Specifies how many seconds or milliseconds an animation takes to complete one cycle - CSS#3 -}
animationDuration : Duration -> CssProperty
animationDuration = (,) "animation-delay" << durationToString

{-| Specifies what values are applied by the animation outside the Duration it is executing - CSS#3 -}
animationFillMode :
    { backwards : CssProperty
    , both : CssProperty
    , forwards : CssProperty
    , none : CssProperty
    }
animationFillMode =
  { none            = (,) "animation-fill-mode" "none"
  , forwards        = (,) "animation-fill-mode" "forwards"
  , backwards       = (,) "animation-fill-mode" "backwards"
  , both            = (,) "animation-fill-mode" "both"
  }

{-| Specifies the number of Durations an animation should be played - CSS#3 -}
animationIterationCount : Int -> CssProperty
animationIterationCount = (,) "animation-iteration-count" << toString

{-| animation-iteration-count set at infinite -}
animationInfinite : CssProperty
animationInfinite = (,) "animation-iteration-count" "infinite"

{-| Specifies a name for the -}
animationName : String -> CssProperty
animationName = (,) "animation-name"

{-| Specifies the speed curve of the animation - CSS#3 -}
animationTimingFunction :
    { bezier : Int -> Int -> Int -> Int -> CssProperty
    , ease : CssProperty
    , easeIn : CssProperty
    , easeOut : CssProperty
    , linear : CssProperty
    }
animationTimingFunction =
  { linear          = (,) "animation-timing-function" "linear"
  , ease            = (,) "animation-timing-function" "ease"
  , easeIn          = (,) "animation-timing-function" "ease-in"
  , easeOut         = (,) "animation-timing-function" "ease-out"
  , bezier i j k l  = (,) "animation-timing-function" (cubicBezier i j k l)
  }

cubicBezier : Int -> Int -> Int -> Int -> String
cubicBezier i j k l = ("cubic-bezier(" ++ (toString i) ++ "," ++ (toString j) ++ "," ++ (toString k) ++ "," ++ (toString l) ++ ")")

{-| Specifies whether the animation is running or paused - CSS#3 -}
animationPlayState :
    { paused : CssProperty, running : CssProperty }
animationPlayState =
  { paused          = (,) "animation-play-state" "paused"
  , running         = (,) "animation-play-state" "running"
  }

{-| Defines whether or not an element should be visible when not facing the screen - CSS#3 -}
backfaceVisibility :
    { hidden : CssProperty, visible : CssProperty }
backfaceVisibility =
  { visible         = (,) "backface-visibility" "visible"
  , hidden          = (,) "backface-visibility" "hidden"
  }

{-| Specifies the perspective on how - CSS#3D elements are viewed - CSS#3 -}
perspective : Int -> CssProperty
perspective = (,) "perspective" << toString

{-| Specifies the bottom position of - CSS#3D elements - CSS#3 -}
perspectiveOrigin :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
perspectiveOrigin =
  { center          = (,) "perspective-origin" "center"
  , centerLeft      = (,) "perspective-origin" "left center"
  , centerRight     = (,) "perspective-origin" "right center"
  , topLeft         = (,) "perspective-origin" "left top"
  , topRight        = (,) "perspective-origin" "right top"
  , topCenter       = (,) "perspective-origin" "center top"
  , bottomLeft      = (,) "perspective-origin" "left bottom"
  , bottomRight     = (,) "perspective-origin" "right bottom"
  , bottomCenter    = (,) "perspective-origin" "center bottom"
  , custom          = (,) "perspective-origin"
  }

{-| Applies a - CSS#2D or - CSS#3D transformation to an element - CSS#3 -}
transform : String -> CssProperty
transform = (,) "transform"

{-| Allows you to change the position on transformed elements - CSS#3 -}
transformOrigin :
    { bottomCenter : CssProperty
    , bottomLeft : CssProperty
    , bottomRight : CssProperty
    , center : CssProperty
    , centerLeft : CssProperty
    , centerRight : CssProperty
    , custom : String -> CssProperty
    , topCenter : CssProperty
    , topLeft : CssProperty
    , topRight : CssProperty
    }
transformOrigin =
  { center          = (,) "transform-origin" "center"
  , centerLeft      = (,) "transform-origin" "left center"
  , centerRight     = (,) "transform-origin" "right center"
  , topLeft         = (,) "transform-origin" "left top"
  , topRight        = (,) "transform-origin" "right top"
  , topCenter       = (,) "transform-origin" "center top"
  , bottomLeft      = (,) "transform-origin" "left bottom"
  , bottomRight     = (,) "transform-origin" "right bottom"
  , bottomCenter    = (,) "transform-origin" "center bottom"
  , custom          = (,) "transform-origin"
  }

{-| Specifies how nested elements are rendered in - CSS#3D space - CSS#3 -}
transformStyle :
    { flat : CssProperty, preserve3d : CssProperty }
transformStyle =
  { flat            = (,) "transform-style" "flat"
  , preserve3d      = (,) "transform-style" "preserve-3d"
  }

{-| A shorthand property for setting the four transition properties - CSS#3 -}
transition : String -> CssProperty
transition = (,) "transition"

{-| Specifies the name of the CSS property the transition effect is for - CSS#3 -}
transitionProperty : String -> CssProperty
transitionProperty = (,) "transition-property"

{-| Transition all -}
transitionAll : CssProperty
transitionAll = (,) "transition-property" "all"

{-| Specifies how many seconds or milliseconds a transition effect takes to complete - CSS#3 -}
transitionDuration : Duration -> CssProperty
transitionDuration = (,) "transition-duration" << durationToString

{-| Specifies the speed curve of the transition effect - CSS#3 -}
transitionTimingFunction :
    { bezier : Int -> Int -> Int -> Int -> CssProperty
    , ease : CssProperty
    , easeIn : CssProperty
    , easeInOut : CssProperty
    , easeOut : CssProperty
    , linear : CssProperty
    }
transitionTimingFunction =
  { ease            = (,) "transition-timing-function" "ease"
  , linear          = (,) "transition-timing-function" "linear"
  , easeIn          = (,) "transition-timing-function" "ease-in"
  , easeOut         = (,) "transition-timing-function" "ease-out"
  , easeInOut       = (,) "transition-timing-function" "ease-in-out"
  , bezier i j k l  = (,) "transition-timing-function" (cubicBezier i j k l)
  }

{-| Specifies when the transition effect will start - CSS#3 --}
transitionDelay : Duration -> CssProperty
transitionDelay = (,) "transition-delay" << durationToString

---- BOX DECORATION ----

{-| Tells the browser what the sizing properties (width and height) should include - CSS#3 -}
boxSizing :
    { borderBox : CssProperty
    , contentBox : CssProperty
    , paddingBox : CssProperty
    }
boxSizing =
  { contentBox      = (,) "box-sizing" "content-box"
  , paddingBox      = (,) "box-sizing" "padding-box"
  , borderBox       = (,) "box-sizing" "border-box"
  }

{-| Specifies the type of cursor to be displayed - CSS#2 -}
cursor :
    { alias : CssProperty
    , allScroll : CssProperty
    , auto : CssProperty
    , cell : CssProperty
    , colResize : CssProperty
    , contextMenu : CssProperty
    , copy : CssProperty
    , crosshair : CssProperty
    , default : CssProperty
    , eResize : CssProperty
    , ewResize : CssProperty
    , grab : CssProperty
    , grabbing : CssProperty
    , help : CssProperty
    , move : CssProperty
    , nResize : CssProperty
    , neResize : CssProperty
    , neswResize : CssProperty
    , noDrop : CssProperty
    , none : CssProperty
    , notAllowed : CssProperty
    , nsResize : CssProperty
    , nwResize : CssProperty
    , nwseResize : CssProperty
    , pointer : CssProperty
    , progress : CssProperty
    , rowResize : CssProperty
    , sResize : CssProperty
    , seResize : CssProperty
    , swResize : CssProperty
    , text : CssProperty
    , verticalText : CssProperty
    , wResize : CssProperty
    , wait : CssProperty
    , zoomIn : CssProperty
    , zoomOut : CssProperty
    }
cursor =
  { alias           = (,) "cursor" "alias"
  , allScroll       = (,) "cursor" "all-scroll"
  , auto            = (,) "cursor" "auto"
  , cell            = (,) "cursor" "cell"
  , contextMenu     = (,) "cursor" "context-menu"
  , colResize       = (,) "cursor" "col-resize"
  , copy            = (,) "cursor" "copy"
  , crosshair       = (,) "cursor" "crosshair"
  , default         = (,) "cursor" "default"
  , eResize         = (,) "cursor" "e-resize"
  , ewResize        = (,) "cursor" "ew-resize"
  , grab            = (,) "cursor" "grab"
  , grabbing        = (,) "cursor" "grabbing"
  , help            = (,) "cursor" "help"
  , move            = (,) "cursor" "move"
  , nResize         = (,) "cursor" "n-resize"
  , neResize        = (,) "cursor" "ne-resize"
  , neswResize      = (,) "cursor" "nesw-resize"
  , nsResize        = (,) "cursor" "ns-resize"
  , nwResize        = (,) "cursor" "nw-resize"
  , nwseResize      = (,) "cursor" "nwse-resize"
  , noDrop          = (,) "cursor" "no-drop"
  , none            = (,) "cursor" "none"
  , notAllowed      = (,) "cursor" "not-allowed"
  , pointer         = (,) "cursor" "pointer"
  , progress        = (,) "cursor" "progress"
  , rowResize       = (,) "cursor" "row-resize"
  , sResize         = (,) "cursor" "s-resize"
  , seResize        = (,) "cursor" "se-resize"
  , swResize        = (,) "cursor" "sw-resize"
  , text            = (,) "cursor" "text"
  , verticalText    = (,) "cursor" "vertical-text"
  , wResize         = (,) "cursor" "w-resize"
  , wait            = (,) "cursor" "wait"
  , zoomIn          = (,) "cursor" "zoom-in"
  , zoomOut         = (,) "cursor" "zoom-out"
  }

{-| Sets all the outline properties in one declaration - CSS#2 -}
outline : String -> CssProperty
outline = (,) "outline-color"

{-| Sets the color of an outline - CSS#2 -}
outlineColor : CssColor -> CssProperty
outlineColor = (,) "outline-color"

{-| Set outline-color value to invert - CSS#3 -}
outlineInvert : CssProperty
outlineInvert = (,) "outline-color" "invert"

{-| Offsets an outline, and draws it beyond the border edge - CSS#3 -}
outlineOffset : Size -> CssProperty
outlineOffset = (,) "outline-offset" << sizeToString

{-| Sets the style of an outline - CSS#2 -}
outlineStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , groove : CssProperty
    , hidden : CssProperty
    , inset : CssProperty
    , none : CssProperty
    , outset : CssProperty
    , ridge : CssProperty
    , solid : CssProperty
    }
outlineStyle =
  { none            = (,) "outline-style" "none"
  , hidden          = (,) "outline-style" "hidden"
  , dotted          = (,) "outline-style" "dotted"
  , dashed          = (,) "outline-style" "dashed"
  , solid           = (,) "outline-style" "solid"
  , double          = (,) "outline-style" "double"
  , groove          = (,) "outline-style" "groove"
  , ridge           = (,) "outline-style" "ridge"
  , inset           = (,) "outline-style" "inset"
  , outset          = (,) "outline-style" "outset"
  }

{-| Sets the width of an outline - CSS#2 -}
outlineWidth : Size -> CssProperty
outlineWidth = (,) "outline-width" << sizeToString

{-| Predifined outline widths - CSS#2 -}
outlineWidths :
    { medium : CssProperty
    , thick : CssProperty
    , thin : CssProperty
    }
outlineWidths =
  { medium          = (,) "outline-width" "medium"
  , thin            = (,) "outline-width" "thin"
  , thick           = (,) "outline-width" "thick"
  }

{-| Specifies whether or not an element is resizable by the user - CSS#3 -}
resize :
    { both : CssProperty
    , horizontal : CssProperty
    , none : CssProperty
    , vertical : CssProperty
    }
resize =
  { none            = (,) "resize" "none"
  , both            = (,) "resize" "both"
  , horizontal      = (,) "resize" "horizontal"
  , vertical        = (,) "resize" "vertical"
  }

{-| Specifies what should happen when text overflows the containing element - CSS#3 -}
textOverflow :
    { clip : CssProperty
    , ellipsis : CssProperty
    , string : CssProperty
    }
textOverflow =
  { clip            = (,) "text-overflow" "clip"
  , ellipsis        = (,) "text-overflow" "ellipsis"
  , string          = (,) "text-overflow" "string"
  }

{-| A shorthand property for setting all the column-rule-* properties - CSS#3 -}
columnRule : String -> CssProperty
columnRule = (,) "column-rule"

{-| Specifies the number of columns an element should be divided - CSS#3 -}
columnCount : Int -> CssProperty
columnCount = (,) "column-count" << toString

{-| Specifies the gap between the columns - CSS#3 -}
columnGap : Int -> CssProperty
columnGap = (,) "column-gap" << toString

{-| Specifies the color of the rule between columns - CSS#3 -}
columnRuleColor : CssColor -> CssProperty
columnRuleColor = (,) "column-rule-color"

{-| Specifies the style of the rule between columns - CSS#3 -}
columnRuleStyle :
    { dashed : CssProperty
    , dotted : CssProperty
    , double : CssProperty
    , groove : CssProperty
    , hidden : CssProperty
    , inset : CssProperty
    , none : CssProperty
    , outset : CssProperty
    , ridge : CssProperty
    , solid : CssProperty
    }
columnRuleStyle =
  { none            = (,) "column-rule-style" "none"
  , hidden          = (,) "column-rule-style" "hidden"
  , dotted          = (,) "column-rule-style" "dotted"
  , dashed          = (,) "column-rule-style" "dashed"
  , solid           = (,) "column-rule-style" "solid"
  , double          = (,) "column-rule-style" "double"
  , groove          = (,) "column-rule-style" "groove"
  , ridge           = (,) "column-rule-style" "ridge"
  , inset           = (,) "column-rule-style" "inset"
  , outset          = (,) "column-rule-style" "outset"
  }

{-| Specifies the width of the rule between columns - CSS#3 -}
columnRuleWidth : Size -> CssProperty
columnRuleWidth = (,) "column-rule-width" << sizeToString

{-| Specifies columns rule width -}
columnRuleWidths :
    { medium : CssProperty
    , thick : CssProperty
    , thin : CssProperty
    }
columnRuleWidths =
  { medium          = (,) "column-rule-width" "medium"
  , thin            = (,) "column-rule-width" "thin"
  , thick           = (,) "column-rule-width" "thick"
  }

{-| Specifies how many columns an element should span across - CSS#3 -}
columnSpan : { all : CssProperty, one : CssProperty }
columnSpan =
  { one             = (,) "column-span" "1"
  , all             = (,) "column-span" "all"
  }

{-| Specifies the width of the columns - CSS#3 -}
columnWidth : Size -> CssProperty
columnWidth = (,) "column-width" << sizeToString

{-| A shorthand property for setting column-width and column-count - CSS#3 -}
columns : String -> CssProperty
columns = (,) "columns"

{-| Sets the type of quotation marks for embedded quotations - CSS#2 -}
quotes : String -> CssProperty
quotes = (,) "quotes"
