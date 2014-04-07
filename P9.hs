{-
- Pack consecutive duplicates of list elements into sublists. If a list
- contains repeated elements, they should be placed in separate sublists.
-
- Example:
- > pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e']
- ["aaaa", "b", "cc", "aa", "d", "eee"]
-}

module P9 (pack) where

import qualified Data.List as List

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack xs =
    let (grp, rest) = span (== (head xs)) xs
        in grp : (pack rest)

pack' :: (Eq a) => [a] -> [[a]]
pack' = List.group
