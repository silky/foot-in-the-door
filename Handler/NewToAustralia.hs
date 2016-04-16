module Handler.NewToAustralia where

import           Import
import           Form
import           Yesod.Form.Bootstrap3           (renderBootstrap3)

getNewToAustraliaR :: Handler Html
getNewToAustraliaR =
      defaultLayout $ do
          setTitle "Foot in the door! - New to Australia"
          $(widgetFile "newtoaustralia")


type NewToAustraliaForm = MForm Handler (FormResult Usm, Widget)


-- newToAustraliaForm :: Key Usm -> Html -> NewToAustraliaForm
-- newToAustraliaForm u = renderBootstrap3 fLayout $ Usm
