module Handler.NewToAustralia where

import           Import
import           Form
import           Yesod.Form.Bootstrap3           (renderBootstrap3)

profList :: [Text]
profList = [
      "Accountant"
    , "Engineer"
    , "Doctor"
    , "Nurse"
    , "Architect"
    , "Basketball Coach"
    , "Software Developer"
  ]


getNewToAustraliaR :: Handler Html
getNewToAustraliaR = do
      defaultLayout $ do
          setTitle "Foot in the door! - New to Australia"
          $(widgetFile "newtoaustralia")


type NewToAustraliaForm = MForm Handler (FormResult Usm, Widget)


-- newToAustraliaForm :: Key Usm -> Html -> NewToAustraliaForm
-- newToAustraliaForm u = renderBootstrap3 fLayout $ Usm
