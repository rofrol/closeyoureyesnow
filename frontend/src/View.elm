module View exposing (view)

import Browser
import Colors
import Element exposing (..)
import Element.Font as Font
import Element.Region as Region
import Html.Attributes as HtmlA
import Types exposing (..)


view : Model -> Browser.Document Msg
view _ =
    { title = "Example"
    , body =
        [ layout
            []
            (heading2 "Hello World!")
        ]
    }


heading2 : String -> Element msg
heading2 text_ =
    paragraph
        [ Font.size 14
        , Font.bold
        , Font.color Colors.gray2
        , Region.heading 2
        , HtmlA.style "word-break" "break-word" |> htmlAttribute
        , paddingXY 0 12
        ]
        [ text text_ ]
