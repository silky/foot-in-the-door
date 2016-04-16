module Form where

import Import
import Yesod.Form.Bootstrap3

addClass :: Text -> [(Text,Text)] -> [(Text,Text)]
addClass klass attrs = map add attrs
  where
    add ("class", a) = ("class", klass <> " " <> a)
    add b = b


fs :: Text -> FieldSettings App
fs = bfs

fLayout :: BootstrapFormLayout
fLayout = BootstrapHorizontalForm {
  bflLabelOffset = ColMd 0,
  bflLabelSize   = ColMd 4,
  bflInputOffset = ColMd 0,
  bflInputSize   = ColMd 8
}

savebtn :: MonadHandler m => AForm m ()
savebtn = bootstrapSubmit ("Save!" :: BootstrapSubmit Text)
