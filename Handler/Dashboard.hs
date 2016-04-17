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
      ISHP "General Assembly" "ga.jpeg" "Teach software development"
  ]

mentors :: [Mentor]
mentors = [
      M "Bilmur Khao" "bilmur-small.jpg" "I'm Bilmur, 37, Tech Lead"
    , M "Alice Li" "alice-small.jpg" "I've been a BA here for 2 years"
    , M "Hararo Mas" "hararo-small.jpg" "Hi. I'm a Java developer"
  ]


upcomingEvents :: [Event]
upcomingEvents = [
      EV "Monthly Software Developer Meetup" "meetup.png" "Come join us at our regular Software Developer meetup!"
    , EV "DrResumeGenie - Resume skills" "genie.png" "DrResumeGenie is in."
    , EV "Do Software Developers need LinkedIn?" "linkedin.png" "We survey peoples feeling on this matter."
  ]

getDashboardR :: Handler Html
getDashboardR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "dashboard")
