module Main exposing (main)

import BarChart
import Browser
import Html exposing (..)
import Time


main =
    Browser.element { init = init, update = update, subscriptions = subscriptions, view = view }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model 0
    , Cmd.none
    )


type Msg
    = Test


type alias Model =
    { test : Int }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Test ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Html Msg
view model =
    div []
        [ BarChart.view
            [ ( Time.millisToPosix 1448928000000, 2.5 )
            , ( Time.millisToPosix 1451606400000, 2 )
            , ( Time.millisToPosix 1452211200000, 3.5 )
            , ( Time.millisToPosix 1452816000000, 2 )
            , ( Time.millisToPosix 1453420800000, 3 )
            , ( Time.millisToPosix 1454284800000, 1 )
            , ( Time.millisToPosix 1456790400000, 1.2 )
            ]
        ]
