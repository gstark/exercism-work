module Bob where
import Data.Char

responseFor message
   | emptyMessage          = "Fine. Be that way!"
   | yelling               = "Woah, chill out!"
   | endsWithQuestionMark  = "Sure."
   | otherwise             = "Whatever."
   where endsWithQuestionMark = last message == '?'
         emptyMessage         = all isSpace message
         yelling              = all (not . isLower) message && any isAlpha message
