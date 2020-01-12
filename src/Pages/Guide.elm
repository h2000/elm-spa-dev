module Pages.Guide exposing (Model, Msg, page)

import Spa.Page
import Element exposing (..)
import Generated.Params as Params
import Utils.Spa exposing (Page)
import Ui


type alias Model =
    ()


type alias Msg =
    Never


page : Page Params.Guide Model Msg model msg appMsg
page =
    Spa.Page.static
        { title = always "Guide"
        , view = always view
        }



-- VIEW


view : Element Msg
view =
    column [centerX]
        [ Ui.hero { title = "Guide", description = "A guide for elm spa!" , buttons = [("home", "/")]}
        -- , Ui.hero { title = "hello world", description = "Single page apps made easy" }
        ]