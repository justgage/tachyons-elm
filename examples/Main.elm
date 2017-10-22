module Main exposing (..)

import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (f1, purple, pointer, b)
import Html exposing (..)


main =
    div [ classes [ f1, purple, pointer, Tachyons.Classes.b ] ]
        [ tachyons.css
        , text "I'm Purple and big!"
        ]
