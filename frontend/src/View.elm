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
                , h2 "Relax your body"
                , p [ text "This the technique I more or less use to relax my body:" ]
                , ul
                    [ li [ text "Sit back in your chairs and put your feet flat on the deck. Knees apart, your hands limp on the inside of your lap. Now, close your eyes and drop your chin until it rests on your chest." ]
                    , li [ text "Let’s breathe slowly, deeply, and regularly. Take all the wrinkles out of your forehead. Relax your scalp. Just let go. Now let your jaw sag-g-g. Let it drop open. Now relax the rest of your face muscles. Get the brook trout look on your face. Even relax your tongue and lips. Just let them go loose. Breathe slowly." ]
                    , li [ text "Now, let’s go after the eight muscles that control your eyes. Let them go limp in their sockets. No focus, just let them go limp. Breathe slowly." ]
                    , li [ text "Now drop your shoulders as low as they will go. You think that they are low, but let them go more. Did you feel the muscles in the back of your neck go limp? When you think you are really relaxed, let them go even more." ]
                    , li [ text "Now, let’s relax your chest. Take a deep breath. Hold it. Exhale and blow out all your tensions. Just let your chest collapse. Let it sag-g-g. Imagine you are a big, heavy blob on the chair, a jellyfish. Breathe slowly. When you exhale, release more and more of your tensions." ]
                    , li [ text "Let’s go after your arms. Talk directly to your arm muscles. First, talk to your right bicep. Tell it to relax, go limp. Do the same to your right forearm. Now to the right hand and fingers. Your arm should feel like a dead weight on your leg. Repeat the relaxation process with your left arm. Breathe slowly." ]
                    , li [ text "Your entire upper body has been exposed to relaxation and a warm, pleasant feeling comes over you. You feel good. A sense of well-being invades your body." ]
                    , li [ text "Now for your lower body. Talk to your right thigh muscles. Let them go to a dead weight on the chair. Let the meat hang on the bones. Go through the same routine for the right calf muscles. Then all the muscles of your right ankle and foot. Tell yourself that your right leg has no bones in it. It is just a flabby, heavy weight on the deck. Repeat the process with your left thigh, calf, ankle, and foot." ]
                    , li [ text "At present you are all relaxed physically, or think you are. For a little insurance, let’s take three deep breaths and when you let them out, blow out all the remaining tensions, one . . . whoosh, two . . . whoosh, three . . . whoosh." ]
                    , li [ text "You should relax every part of you body. Concentrating your focus on every part of your body one by one, and trying to relax it." ]
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
    image [ width fill, paddingEach { each | bottom = 16 } ]
        { src = url
        , description = ""
        }


ul children =
    column
        [ spacing 16
        , width fill
        , paddingEach { each | bottom = 16, left = 20 }
        ]
        (List.map
            (\child ->
                row [ width fill ]
                    [ el [ width (px 20), height (px 20), alignTop, moveUp 2 ] (text "•")
                    , child
                    ]
            )
            children
        )



-- TODO: second level should have different bullet symbol


li : List (Element msg) -> Element msg
li children =
    baseParagraph [ alignTop ] children



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
