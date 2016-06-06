module Main where

import Html

-- MODEL

type alias Model =
    { time: Int
    , timeSpeed: Int
    , compartments : [ Compartment.Model ]
    }


-- UPDATE

type Msg
    = Tick

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every second (\ x - > Tick)

update : Msg -> Model -> (Model, Cmd Msg)
update action model =
  case action of
    Reset → model

view model =
    div []
        [ span [] [ text model.time ]
        ]
