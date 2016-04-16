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
      ISHP "ACME Nurse Shift Company" "civ.png" "Worked on roads? We want you."
    , ISHP "ACME Local GP" "garden.png" "We are having an open day. Love flowers? We love you!"
  ]

mentors :: [Mentor]
mentors = [
      M "Bilmur" "bilmur.png" "I'm experienced with working in local hospitals and with the adminstration of hospitals"
    , M "Alice" "alice.png" "I am a doctor in Melbourne"
    , M "Bob" "bob.png" "I am a doctor in Melbourne"
    , M "Carlos" "carlos.png" "I am a doctor in Melbourne"
    , M "David" "david.png" "I am a doctor in Melbourne"
    , M "Edith" "edith.png" "I am a doctor in Melbourne"
    , M "Fred" "fred.png" "I am a doctor in Melbourne"
    , M "Georgia" "georgia.png" "I am a doctor in Melbourne"
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
