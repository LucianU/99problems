{-
- Create a list containing all integers in a given range.
-
- Example:
- > range 4 9
- [4,5,6,7,8,9]
-}

range :: Int -> Int -> [Int]
range a b =
    let gen xs
            | last xs == b = xs
            | otherwise = gen $ xs ++ [last xs + 1]
    in gen [a]
