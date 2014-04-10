{-
- Modified run-length encoding.
- Modify the result of problem 10 in such a way that, if an element has no
- duplicates, it is simply copied into the result list. Only elements with
- duplicates are transferred as (N E) lists.
-
- Example:
- > encodeModified "aaaabccaadeeee"
- [Multiple 4 'a', Single 'b', Multiple 2 'c',
-  Multiple 2 'a', Single 'd', Multiple 4 'e']
-}

module P11 (
    Element(Single, Multiple)
) where

import qualified P9

data Element a = Single a | Multiple Int a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Element a]
encodeModified = map transform . P9.pack
    where transform (x:[]) = Single x
          transform all@(x:xs) = Multiple (length all) x
