module Main exposing (..)

import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (f1, purple, pointer, tj)
import Html exposing (..)


{-|
This is just an example of how this works
-}
main : Html msg
main =
    div [ classes [ tj, f1, purple, pointer, Tachyons.Classes.b ] ]
        [ tachyons.css
        , text "I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! I'm Purple and big! "
        ]
