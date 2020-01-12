module Layout exposing (view)

import Element exposing (..)
import Element.Font as Font
import Generated.Routes as Routes exposing (Route, routes)
import Ui exposing (colors)
import Utils.Spa as Spa


view : Spa.LayoutContext msg -> Element msg
view { page, route } =
    column
        [ height fill
        , width fill
        , Font.family [ Font.external { url = "https://fonts.googleapis.com/css?family=Source+Sans+Pro:300", name = "Source Sans Pro" } ]
        ]
        [ viewHeader route
        , page
        ]


viewHeader : Route -> Element msg
viewHeader currentRoute =
    row
        [ spacing 24
        , paddingEach { top = 32, left = 16, right = 16, bottom = 0 }
        , centerX
        , width (fill |> maximum 720)
        ]
        [ viewLink currentRoute ( "elm-spa", routes.top )
        , viewLink currentRoute ( "docs", routes.docs_top )
        , viewLink currentRoute ( "guide", routes.guide )
        ]


viewLink : Route -> ( String, Route ) -> Element msg
viewLink currentRoute ( label, route ) =
    if currentRoute == route then
        el
            [ Font.color colors.coral
            , Font.size 16
            , alpha 0.5
            ]
            (text label)

    else
        link
            [ Font.color colors.coral
            , Font.size 16
            , mouseOver [ alpha 0.5 ]
            ]
            { label = text label
            , url = Routes.toPath route
            }
