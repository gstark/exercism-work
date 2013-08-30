module Bob where
import Data.Char

responseFor message
   | emptyMessage          = "Fine. Be that way!"
   | yelling               = "Woah, chill out!"
   | endsWithQuestionMark  = "Sure."
   | otherwise             = "Whatever."
   where endsWithQuestionMark = last message == '?'
         emptyMessage         = all isSpace message
         yelling              = all (\x -> not(isAlpha x) || isUpper x) message && any isAlpha message

