module Handler.NewToAustralia where

import Import

getNewToAustraliaR :: Handler Html
getNewToAustraliaR =
      defaultLayout $ do
          setTitle "Foot in the door! - New to Australia"
          $(widgetFile "newtoaustralia")
