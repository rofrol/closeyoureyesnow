module View exposing (view)

import Browser
import Colors
import Element exposing (..)
import Element.Border as Border
import Element.Font as Font
import Element.Region as Region
import Html
import Html.Attributes as HtmlA
import Types exposing (..)


view : Model -> Browser.Document Msg
view _ =
    { title = "Example"
    , body =
        [ layout
            []
            (column [ width (px 946), paddingXY 48 40, centerX ]
                [ h1 "Close Your Eyes Now"
                , p [ text "This the combinations of techniques to get into bed at 22:00 and fall asleep in short time." ]
                , p [ text "I am sharing this for the greater benefit of humanity." ]
                , h2 "Inspiration"
                , blockquote
                    [ "Do NOT Compromise On Sleep"
                    , "This is where your approach to Time Management should begin"
                    ]
                , p
                    [ link [ Font.color Colors.link ]
                        { url = "https://www.reddit.com/r/TimeManagement/comments/d6ahdu/do_not_compromise_on_sleep/"
                        , label = text "https://www.reddit.com/r/TimeManagement/comments/d6ahdu/do_not_compromise_on_sleep/"
                        }
                    ]
                , p
                    [ text "After reading this, I thought about this "
                    , link []
                        { url = "https://youtu.be/UENRVfdnGxs?t=53"
                        , label = text "scene in the sleeping pod from The Fifth Element (1997)"
                        }
                    , text ":"
                    ]
                , p
                    [ image []
                        { src = "/TheFifthElement1997TakeoffScene.gif"
                        , description = ""
                        }
                    ]
                , p [ text "After pressing the button you fall asleep instantly." ]
                , p [ text "How can we have similar device today? Or similar effect with some techinque?" ]
                , p [ text "It looks like we can have it." ]
                ]
            )
        ]
    }


h1 : String -> Element msg
h1 text_ =
    el
        [ width fill
        , paddingEach
            { bottom = 16
            , left = 0
            , right = 0
            , top = 0
            }
        , Region.heading 1
        ]
        (el
            [ Border.color Colors.headingBorder
            , Border.widthEach
                { bottom = 1
                , left = 0
                , right = 0
                , top = 0
                }
            , width fill
            ]
            (paragraph
                [ Font.size 32
                , Font.bold
                , Font.color Colors.text
                , HtmlA.style "word-break" "break-word" |> htmlAttribute
                , paddingEach
                    { bottom = 9
                    , left = 0
                    , right = 0
                    , top = 0
                    }
                ]
                [ text text_ ]
            )
        )


h2 : String -> Element msg
h2 text_ =
    el
        [ width fill
        , paddingEach
            { bottom = 16
            , left = 0
            , right = 0
            , top = 24
            }
        , Region.heading 2
        ]
        (el
            [ Border.color Colors.headingBorder
            , Border.widthEach
                { bottom = 1
                , left = 0
                , right = 0
                , top = 0
                }
            , width fill
            ]
            (paragraph
                [ Font.size 24
                , Font.bold
                , Font.color Colors.text
                , HtmlA.style "word-break" "break-word" |> htmlAttribute
                , paddingEach
                    { bottom = 7
                    , left = 0
                    , right = 0
                    , top = 0
                    }
                ]
                [ text text_ ]
            )
        )


p : List (Element msg) -> Element msg
p children =
    paragraph
        [ Font.size 16
        , Font.color Colors.text
        , HtmlA.style "word-break" "break-word" |> htmlAttribute
        , spacing 3
        , paddingEach
            { bottom = 16
            , left = 0
            , right = 0
            , top = 0
            }
        ]
        children


blockquote texts =
    el
        [ Font.color Colors.blockquote
        , Font.size 16
        , paddingEach { top = 0, right = 0, bottom = 16, left = 0 }
        ]
        (column
            [ Border.color Colors.blockquoteBorder
            , Border.widthEach
                { bottom = 0
                , left = 4
                , right = 0
                , top = 0
                }
            , paddingXY 16 0
            , spacing 10
            ]
            (List.map (el [] << text) texts)
        )


fontWeight weight =
    HtmlA.style "font-weight" (String.fromInt weight) |> htmlAttribute
