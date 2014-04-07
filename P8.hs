{-
- Eliminate consecutive duplicates of list elements.
- If a list contains repeated elements, they should be replaced with
- a single copy of the element. The order of the elements should not be
- changed.
-
- Example:
- > compress "aaaabccaadeeee"
- "abcade"
-}

import Data.List as List

compress :: (Eq a) => [a] -> [a]
compress = foldr (\x acc -> if ((length acc) > 0) && (head acc) == x then acc else x:acc) []

compress' = map head $ List.group
