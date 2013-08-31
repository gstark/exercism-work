module WordCount where
import Data.Char
import Data.List
import Data.Map (fromList)

-- I like this implementation but I don't like the name
toListCount [] = []
toListCount (word:rest) = [(word, 1 + length x)] ++ toListCount xs
   where (x, xs) = partition(== word) rest

-- Is there a better way to implement the onlyAlphaNum than a lambda containing an if?
-- Originally I had:
--  where onlyAlphaNum x
--         | isAlpha x || isDigit x = toLower x
--         | otherwise = ' '
--
-- But I'm not sure which is more idiomatic Haskell
wordCount phrase = fromList $ toListCount $ words $ map onlyAlphaNum (map toLower phrase)
  where onlyAlphaNum = (\x -> if isAlphaNum x then x else ' ')

