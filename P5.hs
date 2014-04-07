{-
- Reverse a list.
-}

myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x:acc) []

{-
- Less efficient, because it appends to the end of the list, which is
- a less efficient operation in Haskell than inserting at the beginning
-}
myReverse' :: [a] -> [a]
myReverse' = foldr (\x acc -> acc ++ [x]) []
