module WordCount where
import Data.Char
import Data.List
import Data.Map (fromList)

-- Is there a better way to implement the onlyAlphaNum than a lambda containing an if?
-- Originally I had:
--  where onlyAlphaNum x
--         | isAlpha x || isDigit x = toLower x
--         | otherwise = ' '
--
-- But I'm not sure which is more idiomatic Haskell

wordCount = (fromList . map toCount . group . sort . words . map onlyAlphaNum . map toLower)
  where onlyAlphaNum = (\x -> if isAlphaNum x then x else ' ')
        toCount      = (\x -> (head x, length x))

