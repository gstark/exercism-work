module Anagram where
import Data.Char
import Data.List

anagramsFor word words = filter sortedWordsSame $ filter wordsDifferent words
  where sortedWordsSame x = sort (map toLower x) == sortedWord
        wordsDifferent  x = map toLower x /= lowerWord
        lowerWord         = map toLower word
        sortedWord        = sort $ lowerWord


