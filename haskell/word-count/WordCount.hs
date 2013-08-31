module WordCount where
import Data.Char
import Data.List
import Data.Map (fromList)

toListCount [] = []
toListCount (word:rest) = [(word, 1 + length x)] ++ toListCount xs
   where (x, xs) = partition(== word) rest

wordCount phrase = fromList $ toListCount $ words $ map onlyAlphaNum (map toLower phrase)
  where onlyAlphaNum = (\x -> if isAlphaNum x then x else ' ')

