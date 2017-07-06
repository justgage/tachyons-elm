module Tachyons exposing (..)

{-| [Tachyons](http://tachyons.io/) is _the_ best CSS framework ever. It's an implementation of
what people call "Functional CSS" which makes working with CSS a little bit easier.

In functional CSS you have a ton of little CSS classes that do one thing, and
do it well #unixphilosophy.

Essentially what this means is that can create almost any interface without
writing custom css, you only need to compose different CSS selectors together.
Here is an example:

    div [classes [pa1, red, f1]] []

This will:

  - Add the smallest padding available on all four sides (Padding Around 1)
  - Make the foreground color red (an Accessible friendly version)
  - Make the `font-size` as big as an h1 tag.

There's even responsive versions. Like `p1_ns` that will only add padding
to anything that is "not small" (larger than mobile). This style allows you to easily create responsive mobile interfaces.


# Working example

To use the library, just put `tachyons.css` somewhere in your elm-html code to add the stylesheet to your document, and then you can do whatever you want!
Here is a small example:

    module Main exposing (..)

    import Tachyons exposing (classes, tachyons)
    import Tachyons.Classes exposing (f1, purple)
    import Html exposing (..)


    main =
        div [ classes [ f1, purple ] ]
            [ tachyons.css
            , text "I'm Purple and big!"
            ]

# Helper Classes

@docs classes, stylesheet, tachyons
-}

import Html exposing (..)
import Html.Attributes exposing (class, href, rel)


{-| This is a helper funciton that will allow you to combine
multiple Tachyons classes (which are strings) are return a
`Html.Attributes`

    div [classes [pa3, red, f1]] []

-}
classes : List String -> Html.Attribute msg
classes stringList =
    class (String.join " " stringList)


{-| [Tachyons 4.6.1](http://tachyons.io/)

> _"Create fast loading, highly readable, and 100% responsive interfaces with as
> little css as possible."_
> also is an implementation of [functional CSS](https://marcelosomers.com/writing/rationalizing-functional-css/).

-}
tachyons : { css : Html msg }
tachyons =
    { css = stylesheet "https://unpkg.com/tachyons@4.6.1/css/tachyons.min.css" }


{-| An easy way to add stylesheets to a Html document
-}
stylesheet : String -> Html msg
stylesheet url =
    node "link"
        [ rel "stylesheet"
        , href url
        ]
        []

