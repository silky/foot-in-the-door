module Handler.Dashboard where

import Import
import Handler.Common

data Mentor = M {
      mName :: Text
    , mImg  :: Text
    , mDesc :: Text
    }

data Internship = ISHP {
      ishpName  :: Text
    , ishpImage :: Text
    , ishpDesc  :: Text
  }

internships :: [Internship]
internships = [
      ISHP "ACME Civil Engineering" "civ.png" "Worked on roads? We want you."
    , ISHP "ACME Gardening" "garden.png" "Love flowers? We love you!"
  ]

mentors :: [Mentor]
mentors = [
      M "Joe" "joe.png" "I'm experienced with working in local hospitals and with the adminstration of hospitals"
    , M "Alice" "alice.png" "i am a doctor in melbourne"
    , M "Bob" "bob.png" "i am a doctor in melbourne"
    , M "Carlos" "carlos.png" "i am a doctor in melbourne"
    , M "David" "david.png" "i am a doctor in melbourne"
    , M "Edith" "edith.png" "i am a doctor in melbourne"
    , M "Fred" "fred.png" "i am a doctor in melbourne"
    , M "Georgia" "georgia.png" "i am a doctor in melbourne"
  ]


upcomingEvents :: [Event]
upcomingEvents = [
      EV "Monthly Doctor Meetup" "meetup.png" "Come join us at our regular Doctor meetup!"
    , EV "DrResumeGenie - Resume skills" "genie.png" "DrResumeGenie is in."
    , EV "Do doctors need LinkedIn?" "linkedin.png" "We survey peoples feeling on this matter."
  ]

getDashboardR :: Handler Html
getDashboardR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "dashboard")
