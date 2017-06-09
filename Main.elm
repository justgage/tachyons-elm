module Main exposing (..)

import Tachyons exposing (..)
import Html exposing (..)


main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }



-- TYPES


type alias Model =
    { message : String
    }


type Msg
    = NoOp



-- MODEL


model : Model
model =
    { message = "Elm beginnerProgram is ready. Get started!" }



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    div [ classes [ f1, purple ] ]
        [ tachyons.css
        , text model.message
        ]
