module Handler.Chat where

import Import

getChatR :: Handler Html
getChatR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "chat")
