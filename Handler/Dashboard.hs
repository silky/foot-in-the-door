module Handler.Dashboard where

import Import

data Mentor = M {
      mName :: Text
    , mImg  :: Text
    , mDesc :: Text
    }

mentors :: [Mentor]
mentors = [
      M "Joe" "joe.png" "I'm experienced with working in local hospitals and with the adminstration of hospitals"
    , M "Alice" "alice.png" "i am a doctor in melbourne"
    , M "Bob" "bob.png" "i am a doctor in melbourne"
    , M "Carlos" "carlos.png" "i am a doctor in melbourne"
    , M "David" "david.png" "i am a doctor in melbourne"
    , M "Edith" "edith.png" "i am a doctor in melbourne"
    , M "Fred" "fred.png" "i am a doctor in melbourne"
    , M "Georgia" "georgia.png" "i am a doctor in melbourne"
  ]

getDashboardR :: Handler Html
getDashboardR = do
    defaultLayout $ do
        setTitleI MsgSiteTitle
        $(widgetFile "dashboard")
