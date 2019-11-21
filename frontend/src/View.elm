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
                    [ a "https://www.reddit.com/r/TimeManagement/comments/d6ahdu/do_not_compromise_on_sleep/"
                        (text "https://www.reddit.com/r/TimeManagement/comments/d6ahdu/do_not_compromise_on_sleep/")
                    ]
                , p
                    [ text "After reading this, I thought about this "
                    , a
                        "https://youtu.be/UENRVfdnGxs?t=53"
                        (text "scene in the sleeping pod from The Fifth Element (1997)")
                    , text ":"
                    ]
                , img "/TheFifthElement1997TakeoffScene.gif"
                , p [ text "After pressing the button you fall asleep instantly." ]
                , p [ text "How can we have similar device today? Or similar effect with some techinque?" ]
                , p [ text "It looks like we can have it." ]
                , h2 "Works for me"
                , p [ text "I am applying below techniques on myself, and it works since 2019-11-13 so 7 nights already." ]
                , h2 "Alarms"
                , p [ text "First you need to set two alarms with snooze option disabled. Screenshots are from ios." ]
                , img "/alarms.gif"
                , p [ text "When the first alarm rings, prepare very quickly. 5 minutes is very shor time." ]
                , p [ text "So when the second alarm rings, you must immediately close your eyes. If you haven't finished washing your teeth or drinking water, do it with your eyes closed. No excuses." ]
                , h2 "Attitude"
                , p [ text "You need to want to fall a asleep. Otherwise you coul lay in your bad awake for several hours like me. If you have this attitude, you can apply next techniques." ]
                , h2 "Meditation"
                , p [ text "According to ", a "https://www.youtube.com/watch?v=3soroEZ3yBk" (text "Sadhguru - Learn How To Sleep Correctly"), text " you need to:" ]
                , ul
                    [ li [ text "Sleep with your head directed to East (best) or West (good). North and South are very bad." ]
                    , li [ text """Repeat: when you inhale say in your mind "This is not my body", when you exhale "This is not my mind".""" ]
                    ]
                , p [ text "I'm not sure if this direction helps, but this mantra definitelly helps me." ]
                , p [ text "I am also focusing on my breath." ]
                , p
                    [ text "I am using here Vipassana Meditation which I learnt from "
                    , a "http://www.vipassana.com/meditation/mindfulness_in_plain_english.php" (text "Mindfulness in Plain English by Ven. Henepola Gunaratana")
                    , text "."
                    , a "http://misc.equanimity.info/downloads/mindfulness_in_plain_english.pdf" (text "PDF")
                    , text ". "
                    , a "http://sasana.wikidot.com/medytacja-vipassana-w-prostych-slowach" (text "Polish translation")
                    , text " in web, pdf, epub formats."
                    ]
                ]
            )
        ]
    }


h1 : String -> Element msg
h1 text_ =
    el
        [ width fill
        , paddingEach { each | bottom = 16 }
        , Region.heading 1
        ]
        (el
            [ Border.color Colors.headingBorder
            , Border.widthEach { each | bottom = 1 }
            , width fill
            ]
            (baseParagraph
                [ Font.size 32
                , Font.bold
                , paddingEach { each | bottom = 9 }
                ]
                [ text text_ ]
            )
        )


h2 : String -> Element msg
h2 text_ =
    el
        [ width fill
        , paddingEach { each | bottom = 16, top = 24 }
        , Region.heading 2
        ]
        (el
            [ Border.color Colors.headingBorder
            , Border.widthEach { each | bottom = 1 }
            , width fill
            ]
            (baseParagraph
                [ Font.size 24
                , Font.bold
                , paddingEach { each | bottom = 7 }
                ]
                [ text text_ ]
            )
        )


p : List (Element msg) -> Element msg
p children =
    baseParagraph [ paddingEach { each | bottom = 16 } ] children


blockquote texts =
    el
        [ Font.color Colors.blockquote
        , Font.size 16
        , paddingEach { each | bottom = 16 }
        ]
        (column
            [ Border.color Colors.blockquoteBorder
            , Border.widthEach { each | left = 4 }
            , paddingXY 16 0
            , spacing 10
            ]
            (List.map (baseParagraph [] << List.singleton << text) texts)
        )


fontWeight weight =
    HtmlA.style "font-weight" (String.fromInt weight) |> htmlAttribute


a url label =
    link
        [ Font.color Colors.link
        , Border.color Colors.transparent
        , Border.widthEach { each | bottom = 1 }
        , mouseOver [ Border.color <| Colors.link ]
        ]
        { url = url
        , label = label
        }


img url =
    p
        [ image [ width fill ]
            { src = url
            , description = ""
            }
        ]


ul children =
    column
        [ spacing 16
        , width fill
        , paddingEach { each | bottom = 16, left = 20 }
        ]
        children



-- TODO: second level should have different bullet symbol


li : List (Element msg) -> Element msg
li children =
    row [ width fill ]
        [ el [ width (px 20), height (px 20), alignTop, moveUp 2 ] (text "•")
        , baseParagraph [ alignTop ] children
        ]



-- This strips down margin-top.
-- Works without Element.html https://ellie-app.com/7gzQRzKDzQga1
-- [Support for lists (and other flow content) · Issue #58 · mdgriffith/elm-ui](https://github.com/mdgriffith/elm-ui/issues/58)
-- ul : List String -> Element msg
-- ul texts =
--     case List.reverse texts of
--         first :: rest ->
--             Html.ul [ HtmlA.style "margin" "0" ]
--                 (Html.li [] [ Html.text first ]
--                     :: List.map (Html.li [ HtmlA.style "margin-top" "4px" ] << List.singleton << Html.text) rest
--                 )
--                 |> html
--         [] ->
--             none


each =
    { top = 0, right = 0, bottom = 0, left = 0 }


lineSpacing =
    5


baseParagraph attrs children =
    paragraph
        ([ Font.size 16
         , Font.color Colors.text
         , HtmlA.style "word-break" "break-word" |> htmlAttribute
         , spacing lineSpacing
         , alignTop
         ]
            ++ attrs
        )
        children
