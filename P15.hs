{-
- Replicate the elements of a list a given number of times.
-
- Example:
- > repli "abc" 3
- "aaabbbccc"
-}

repli :: [a] -> Int -> [a]
repli xs count = foldr multi [] xs
    where multi x acc = (take count $ repeat x) ++ acc

repli' :: [a] -> Int -> [a]
repli' [] _ = []
repli' (x:xs) count = (take count $ repeat x) ++ repli' xs count
