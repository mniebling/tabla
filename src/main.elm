import Html

teenTalTheka: { name: String, vibhags: List String }
teenTalTheka =
  {
    name = "Teen Tal Theka"
  , vibhags =
    [ "dha dhin dhin dha"
    , "dha dhin dhin dha"
    , "dha tin tin ta"
    , "ta dhin dhin dha"
    ]
  }

vibhagToLiElement: String -> Html.Html
vibhagToLiElement string =
  Html.li [] [Html.text string]

rhythmToHtml: { name: String, vibhags: List String } -> Html.Html
rhythmToHtml rhythm =
  Html.div [] [
    Html.h2 [] [Html.text rhythm.name]
  , Html.ul [] (List.map vibhagToLiElement rhythm.vibhags)
  ]


main =
  rhythmToHtml teenTalTheka
