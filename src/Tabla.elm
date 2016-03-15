module Tabla where

-- Imports
import Html exposing (..)
import Html.Attributes exposing (..)
import Rhythms exposing (..)

-- Model (application state)
type alias Model =
  { currentRhythm : Rhythm,
    possibleRhythms : List Rhythm
  }

model : Model
model =
  { currentRhythm = Rhythms.teenTalTheka
  , possibleRhythms = Rhythms.allRhythms
  }

-- Update
type Action
  = NoOp

update : Action -> Model -> Model
update action newModel =
  case action of
    NoOp -> newModel

-- View
view : Model -> Html
view model =
  div
    [ class "o-container" ]
    [ div
      [ class "c-rhythm-list" ]
      (listOfRhythmsToHtml model.possibleRhythms)
    , div
      [ class "c-rhythm-detail" ]
      [ rhythmToHtml model.currentRhythm ]
    ]

-- View helpers
listOfRhythmsToHtml : List Rhythm -> List Html
listOfRhythmsToHtml listOfRhythms =
  [ ul [] (List.map rhythmLink listOfRhythms) ]

rhythmLink : Rhythm -> Html
rhythmLink rhythm =
  li [] [
    a [href rhythm.name] [text rhythm.name]
  ]

vibhagToLiElement: String -> Html.Html
vibhagToLiElement string =
  Html.li [] [Html.text string]

rhythmToHtml: Rhythm -> Html.Html
rhythmToHtml rhythm =
  Html.div [] [
    Html.h2 [] [Html.text rhythm.name]
  , Html.ul [] (List.map vibhagToLiElement rhythm.vibhags)
  ]

-- Ready, go!
main =
  view model
