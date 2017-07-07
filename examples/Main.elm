module Main exposing (..)

import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (f1, purple, pointer)
import Html exposing (..)


main =
    div [ classes [ f1, purple, pointer ] ]
        [ tachyons.css
        , text "I'm Purple and big!"
        ]
