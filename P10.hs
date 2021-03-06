{-
- Run-length encoding of a list. Use the result of problem P09 to implement
- the so-called run-length encoding data compression method. Consecutive
- duplicates of elements are encoded as lists (N E) where N is the number
- of duplicates of the element E.
-
- Example:
- > encode "aaaabccaadeeee"
- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

import qualified P9

encode :: (Eq a) => [a] -> [(Int,a)]
encode = map (\x -> (length x, head x)) . P9.pack
