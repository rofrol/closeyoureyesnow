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
            (column
                [ width (px 946)
                , paddingXY 48 40
                , centerX
                , Font.family
                    [ Font.typeface "-apple-system"
                    , Font.typeface "BlinkMacSystemFont"
                    , Font.typeface "Segoe UI"
                    , Font.typeface "Helvetica"
                    , Font.typeface "Arial"
                    , Font.sansSerif
                    , Font.typeface "Apple Color Emoji"
                    , Font.typeface "Segoe UI Emoji"
                    ]
                ]
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
                        (Just "https://www.reddit.com/r/TimeManagement/comments/d6ahdu/do_not_compromise_on_sleep/")
                    ]
                , p
                    [ text "After reading this, I thought about "
                    , a
                        "https://youtu.be/UENRVfdnGxs?t=53"
                        (Just "scene in the sleeping pod from The Fifth Element (1997)")
                    , text ":"
                    ]
                , img "TheFifthElement1997TakeoffScene.gif"
                , p [ text "After pressing the button you fall asleep instantly." ]
                , p [ text "How can we have similar device today? Or similar effect with some techinque?" ]
                , p [ text "It looks like we can have it." ]
                , h2 "Works for me"
                , p [ text "I am applying below techniques on myself, and it works since 2019-11-13 so 7 nights already." ]
                , h2 "Alarms"
                , p [ text "First you need to set two alarms with snooze option disabled. Screenshots are from ios." ]
                , img "alarms.gif"
                , p [ text "When the first alarm rings, prepare very quickly. 5 minutes is very shor time." ]
                , p [ text "So when the second alarm rings, you must immediately close your eyes. If you haven't finished washing your teeth or drinking water, do it with your eyes closed. No excuses." ]
                , h2 "Attitude"
                , p [ text "You need to want to fall a asleep. Otherwise you coul lay in your bad awake for several hours like me. If you have this attitude, you can apply next techniques." ]
                , h2 "Meditation"
                , p [ text "According to ", a "https://www.youtube.com/watch?v=3soroEZ3yBk" (Just "Sadhguru - Learn How To Sleep Correctly"), text " you need to:" ]
                , ul
                    [ li [ text "Sleep with your head directed to East (best) or West (good). North and South are very bad." ]
                    , li [ text """Repeat: when you inhale say in your mind "This is not my body", when you exhale "This is not my mind".""" ]
                    ]
                , p [ text "I'm not sure if this direction helps, but this mantra definitelly helps me." ]
                , p [ text "I am also focusing on my breath." ]
                , p
                    [ text "I am using here Vipassana Meditation which I learnt from "
                    , a "http://www.vipassana.com/meditation/mindfulness_in_plain_english.php" (Just "Mindfulness in Plain English by Ven. Henepola Gunaratana")
                    , text "."
                    , a "http://misc.equanimity.info/downloads/mindfulness_in_plain_english.pdf" (Just "PDF")
                    , text ". "
                    , a "http://sasana.wikidot.com/medytacja-vipassana-w-prostych-slowach" (Just "Polish translation")
                    , text " in web, pdf, epub formats."
                    ]
                , h2 "Relax your body"
                , p [ text "This the technique I more or less use to relax my body:" ]
                , ol
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
                , ul
                    [ li [ a "https://www.artofmanliness.com/articles/fall-asleep-fast/" Nothing ]
                    , li [ a "https://skeptics.stackexchange.com/questions/41528/relax-and-win-classified-military-method-to-fall-asleep-quick" Nothing ]
                    , li [ a "https://www.amazon.com/Relax-Win-Championship-Lloyd-Winter/dp/0498025411" Nothing ]
                    ]
                , p [ text "Shorter version:" ]
                , ul
                    [ li [ text "Relax your entire face, including the muscles inside your mouth." ]
                    , li [ text "Drop your shoulders to release the tension and let your hands drop to the side of your body." ]
                    , li [ text "Exhale, relaxing your chest." ]
                    , li [ text "Relax your legs, thighs, and calves." ]
                    , li [ text "Clear your mind for 10 seconds by imagining a relaxing scene." ]
                    , li [ text "If this doesn’t work, try saying the words “don’t think” over and over for 10 seconds." ]
                    , li [ text "Within 10 seconds, you should fall asleep!" ]
                    ]
                , a "https://www.healthline.com/health/healthy-sleep/fall-asleep-fast#10-secs-to-sleep" Nothing
                , h2 "Sleeping on the back"
                , p [ text "I try to sleep on my back because I have some problems with neck after many years of working sitting behind computer." ]
                , p [ text "It is not easy if you previously was sleeping in different position." ]
                , h2 "When you wake during night"
                , p [ text """If you wake up before sleeping 8 hours or similar for you, or you are not sure how long have you slept, ask Siri "What's the time?" or Google Assistant or Alexa or Cortana or whatever.""" ]
                , p [ text "But do not open eyes until you are sure you have slept enought." ]
                , h2 "Green tea better than coffee"
                , p [ text "I try to not drink coffee. If I need to wake up mysefl, I just drink green tea more frequently. Or infuse more leaves in a cup." ]
                , h2 "Eating"
                , p [ text "I try to eat big breakfast and do not eat after 20:00." ]
                , h2 "When I need short nap during day"
                , p [ text "I try to sleep in my chair so the nap is uncomfortable and I do not sleep to much. 5-10 minutes is ok to revitalize. Similar technique:" ]
                , blockquote [ "Painter Salvador Dali and inventor Thomas Edison both actively worked with it. After a round of focused work, Dali sat on his arm chair to think and doze off. In one hand he held a big key and the moment he fell asleep the key dropped, which woke him up and so he went back to the canvas to continue his focused work. Steve Jobs broke up his daily thinking routine by going out for long walks." ]
                , a "https://www.youtube.com/watch?v=WTr12dK2Se0" (Just "Focused and Diffused Thinking: The Ping Pong Technique - YouTube")
                , h2 "Extreme night owls"
                , p [ text """Scientists studied 21 "extreme night owls" who were going to bed, on average, at 02:30 and not waking until after 10:00.""" ]
                , p [ text "Their instructions were to:" ]
                , ul
                    [ li [ text "Wake up 2-3 hours earlier than usual and get plenty of outdoor light in the morning" ]
                    , li [ text "Eat breakfast as soon as possible" ]
                    , li [ text "Exercise only in the morning" ]
                    , li [ text "Have lunch at the same time every day and eat nothing after 19:00" ]
                    , li [ text "Banish caffeine after 15:00" ]
                    , li [ text "Have no naps after 16:00" ]
                    , li [ text "Go to bed 2-3 hours earlier than usual and limit light in the evenings" ]
                    , li [ text "Maintain the same sleep and wake times every day" ]
                    ]
                , p [ text "After three weeks, people had successfully shifted their body clocks two hours earlier in the day, the analysis by the University of Birmingham, University of Surrey and Monash University showed." ]
                , p [ text "The results, in the journal Sleep Medicine, showed people still got the same hours of shut-eye." ]
                , p [ text "But they reported lower levels of sleepiness, stress and depression, while tests showed their reaction times also improved." ]
                , ul
                    [ li [ a "https://www.bbc.com/news/health-48558309" (Just "Night owls: Simple sleep tweaks boost wellbeing - BBC News") ]
                    , li [ a "https://news.ycombinator.com/item?id=20146168" Nothing ]
                    ]
                , h2 "Sleep is your super power"
                , p [ a "https://www.ted.com/talks/matt_walker_sleep_is_your_superpower" Nothing, text " or ", a "" (Just "youtube") ]
                , blockquote [ "One of my most controversial software opinions is that your sleep quality and stress level matter far, far more than the languages you use or the practices you follow. Nothing else comes close: not type systems, not TDD, not formal methods, not ANYTHING." ]
                , p [ a "https://twitter.com/hillelogram/status/1119709859979714560" Nothing ]
                , p [ text "By reanalyzing the data, she and her colleagues made two key findings. First, they found that the volunteers’ performance improved primarily during the short rests, and not during typing. The improvements made during the rest periods added up to the overall gains the volunteers made that day. Moreover, these gains were much greater than the ones seen after the volunteers returned the next day to try again, suggesting that the early breaks played as critical a role in learning as the practicing itself." ]
                , p [ text "Second, by looking at the brain waves, Dr. Bönstrup found activity patterns that suggested the volunteers’ brains were consolidating, or solidifying, memories during the rest periods. Specifically, they found that the changes in the size of brain waves, called beta rhythms, correlated with the improvements the volunteers made during the rests." ]
                , p [ text "Further analysis suggested that the changes in beta oscillations primarily happened in the right hemispheres of the volunteers’ brains and along neural networks connecting the frontal and parietal lobes that are known to help control the planning of movements. These changes only happened during the breaks and were the only brain wave patterns that correlated with performance." ]
                , p [ text "“Our results suggest that it may be important to optimize the timing and configuration of rest intervals when implementing rehabilitative treatments in stroke patients or when learning to play the piano in normal volunteers,” said Dr. Cohen. “Whether these results apply to other forms of learning and memory formation remains an open question.”" ]
                , p [ text "Dr. Cohen’s team plans to explore, in greater detail, the role of these early resting periods in learning and memory." ]
                , ul
                    [ a "https://www.ninds.nih.gov/News-Events/News-and-Press-Releases/Press-Releases/Want-learn-new-skill-Take-some-short-breaks" Nothing
                    , a "https://news.ycombinator.com/item?id=19661949" Nothing
                    ]
                , h2 "More links"
                , ul
                    [ a "https://news.ycombinator.com/item?id=21205021" (Just "What Happens to the Body on No Sleep | Hacker News")
                    , a "https://news.ycombinator.com/item?id=20146168" (Just "Sleep tweaks boost night owls' wellbeing | Hacker News")
                    , a "https://news.ycombinator.com/item?id=19849445" (Just "Researchers identify sleep as a reason why personality traits predict longevity | Hacker News")
                    , a "https://news.ycombinator.com/item?id=18798366" (Just "Why We Sleep, and Why We Often Can’t | Hacker News")
                    ]
                , h2 "More from Sadhguru"
                , ul
                    [ a "https://www.youtube.com/watch?v=iEh7cBv1kMc" (Just "Do these and your sleep quota will go down - Sadhguru about methods of Managing Energy. - YouTube")
                    , a "https://www.youtube.com/watch?v=GM0lU5Dq7eA" (Just "Tips to Eat Right & Sleep Less For Students - Sadhguru - YouTube")
                    , a "https://www.youtube.com/watch?v=a6danRWYxpo" (Just "Night Owl or Early Bird: Which Is Better? #YouthAndTruth - YouTube")
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
    baseParagraph [ paddingEach { each | bottom = 16 }, spacing 8 ] children


blockquote texts =
    el
        [ paddingEach { each | bottom = 16 } ]
        (column
            [ Border.color Colors.blockquoteBorder
            , Border.widthEach { each | left = 4 }
            , paddingXY 16 0
            , spacing 10
            ]
            (List.map (baseParagraph [ Font.color Colors.blockquote ] << List.singleton << text) texts)
        )


fontWeight weight =
    HtmlA.style "font-weight" (String.fromInt weight) |> htmlAttribute


a : String -> Maybe String -> Element msg
a url maybeText =
    link
        [ Font.color Colors.link
        , Font.size 16
        , Border.color Colors.transparent
        , Border.widthEach { each | bottom = 1 }
        , mouseOver [ Border.color <| Colors.link ]
        ]
        { url = url
        , label = text (maybeText |> Maybe.withDefault url)
        }


img url =
    image [ width fill, paddingEach { each | bottom = 16 } ]
        { src = url
        , description = ""
        }


ul children =
    column
        [ spacing 8
        , width fill
        , paddingEach { each | top = 7, bottom = 16, left = 20 }
        ]
        (List.map
            (\child ->
                row [ width fill ]
                    [ el
                        [ width (px 20)
                        , height (px 20)
                        , alignTop
                        , moveUp 2
                        ]
                        (text "•")
                    , child
                    ]
            )
            children
        )


ol children =
    column
        [ spacing 8
        , width fill
        , paddingEach { each | top = 7, bottom = 16, left = 20 }
        ]
        (List.map
            (\( i, child ) ->
                row [ width fill ]
                    [ el [ width (px 20), alignTop, Font.size 16 ]
                        (el
                            [ alignRight
                            , paddingEach { each | right = 10 }
                            ]
                            (text (String.fromInt (i + 1) ++ "."))
                        )
                    , child
                    ]
            )
            (List.indexedMap Tuple.pair children)
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
