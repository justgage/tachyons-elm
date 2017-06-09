# Tachyons For Elm

This basically allows Tachyons auto-completion to work in Elm.

See the Tachyons Module for more info.

# Working example

This is the smallest possible program for working with this library.

    module Main exposing (..)

    import Tachyons exposing (..)
    import Html exposing (..)


    main =
        div [ classes [ f1, purple ] ]
            [ tachyons.css
            , text "I'm Purple and big!"
            ]

