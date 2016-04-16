module Handler.MentorProfile where

import Import

getMentorProfileR :: Handler Html
getMentorProfileR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "mentorprofile")
