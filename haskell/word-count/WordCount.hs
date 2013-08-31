module WordCount where
import Data.Char
import Data.List
import Data.Map (fromListWith)
import Data.List.Split

wordCount = fromListWith (+) . map (\x -> (x,1)) . wordsBy (not . isAlphaNum) . map toLower

