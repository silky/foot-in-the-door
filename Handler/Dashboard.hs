module Handler.Dashboard where

import Import



getDashboardR :: Handler Html
getDashboardR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "dashboard")
