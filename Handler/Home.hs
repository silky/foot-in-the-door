module Handler.Home where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                              withSmallInput)
import Text.Julius (RawJS (..))
import Handler.Common


upcomingEvents :: [Event]
upcomingEvents = [
      EV "Monthly FITD Meetup" "meetup.png" "Come join us at our regular meetup!"
    , EV "ResumeGenie - Resume skills" "genie.png" "What makes a good resume? Find out from the genie-uses!"
    , EV "LinkedWhat?" "linkedin.png" "What is LinkedIn and why should I be on it? Bimal explains!"
  ]
-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "homepage")

postHomeR :: Handler Html
postHomeR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "homepage")
