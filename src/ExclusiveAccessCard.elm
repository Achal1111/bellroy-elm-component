module ExclusiveAccessCard exposing (main)

import Browser
import Html exposing (Html, button, div, input, p, text)
import Html.Attributes exposing (class, placeholder, type_, value)
import Html.Events exposing (onClick, onInput)


-- MODEL

type alias Model =
    { email : String
    , submitted : Bool
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { email = "", submitted = False }
    , Cmd.none
    )


-- MESSAGES

type Msg
    = EmailInput String
    | Subscribe


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        EmailInput newEmail ->
            ( { model | email = newEmail }, Cmd.none )

        Subscribe ->
            ( { model | submitted = True }, Cmd.none )


-- VIEW

view : Model -> Html Msg
view model =
    div [ class "exclusive-access-card" ]
        [ p [ class "exclusive-access-card__title" ]
            [ text "Get exclusive access to new products, deals & surprise treats." ]
        , if model.submitted then
            p [ class "exclusive-access-card__message" ]
                [ text "Thank you for subscribing!" ]
          else
            div [ class "exclusive-access-card__form" ]
                [ input
                    [ type_ "email"
                    , placeholder "Enter your email"
                    , value model.email
                    , onInput EmailInput
                    , class "exclusive-access-card__input"
                    ]
                    []
                , button [ onClick Subscribe, class "exclusive-access-card__button" ]
                    [ text "Subscribe" ]
                ]
        ]


-- MAIN

main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
