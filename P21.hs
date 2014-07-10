{-
- Insert an element at a given position into a list
-
- Example:
- > insertAt 'X' "abcd" 2
- "aXbcd"
-}

insertAt :: a -> [a] -> Int -> [a]
insertAt el xs at =
    let (p1, p2) = splitAt (at-1) xs
        in p1 ++ [el] ++ p2
