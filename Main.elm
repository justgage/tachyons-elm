module Main exposing (..)

import Tachyons exposing (..)
import Html exposing (..)


main =
    div [ classes [ f1, purple ] ]
        [ tachyons.css
        , text "I'm Purple and big!"
        ]
