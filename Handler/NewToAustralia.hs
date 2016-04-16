module Handler.NewToAustralia where

import           Import
import           Form
import           Yesod.Form.Bootstrap3           (renderBootstrap3)


data Profession = P {
    pName :: Text
  , pDesc :: Text
}
profList :: [Profession]
profList = [
      P "Accountant" "You've worked with handling money and paying company accounts."
    , P "Engineer" "Building machines, working on roads, electrical work."
    , P "Doctor" "Medical practicioner, diagnosing patients."
    , P "Nurse" "Medial practicioner, working directly with patients and applying treatments."
    , P "Architect" "Building construction and planning layouts of towns."
    , P "Sports scientist" "Coaching, training athletes"
    , P "Software developer" "Working with computers; arranging 1s and 0s."
  ]


getNewToAustraliaR :: Handler Html
getNewToAustraliaR = do
      defaultLayout $ do
          setTitle "Foot in the door! - New to Australia"
          $(widgetFile "newtoaustralia")


type NewToAustraliaForm = MForm Handler (FormResult Usm, Widget)


-- newToAustraliaForm :: Key Usm -> Html -> NewToAustraliaForm
-- newToAustraliaForm u = renderBootstrap3 fLayout $ Usm
