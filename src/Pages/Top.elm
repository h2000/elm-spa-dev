module Pages.Top exposing (Model, Msg, page)

import Element exposing (..)
import Generated.Params as Params
import Spa.Page
import Ui
import Utils.Spa exposing (Page)


type alias Model =
    ()


type alias Msg =
    Never


page : Page Params.Top Model Msg model msg appMsg
page =
    Spa.Page.static
        { title = always "homepage"
        , view = always view
        }



-- VIEW


view : Element Msg
view =
    column [centerX]
        [ Ui.hero { title = "elm-spa", description = "My ELM SPA Site", buttons = [ ( "guide", "/guide" ) ] }

        -- , Ui.hero { title = "hello world", description = "Single page apps made easy" }
        ]
