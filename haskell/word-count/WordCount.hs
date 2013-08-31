module WordCount where
import Data.Char
import Data.List
import Data.Map (fromList)

count [] = []
count (word:rest) = [(word, 1 + length matches)] ++ count doesntMatch
   where matches     = filter(== word) rest
         doesntMatch = filter(/= word) rest

wordCount phrase = fromList $ count $ words $ map fixup phrase
  where fixup x
         | isAlpha x || isDigit x = toLower x
         | otherwise = ' '

