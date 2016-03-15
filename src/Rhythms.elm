module Rhythms where

type alias Rhythm =
  { name : String
  , vibhags : List String
  }

teenTalTheka : Rhythm
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

kaida1 : Rhythm
kaida1 =
  {
    name = "Kaida 1"
  , vibhags =
    [ "gee ge tee te"
    , "gee ge na na"
    , "ke ke tee te"
    , "gee ge na na"
    ]
  }

allRhythms : List Rhythm
allRhythms =
  [ teenTalTheka
  , kaida1
  ]
