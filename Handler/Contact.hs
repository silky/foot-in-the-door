module Handler.Contact where

import Import

getContactR :: Handler Html
getContactR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "contact")
