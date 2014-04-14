{-
- Rotate a list N places to the left.
-
- Examples:
- > rotate ['a','b','c','d','e','f','g','h'] 3
- "defghabc"
- > rotate ['a','b','c','d','e','f','g','h'] (-2)
- "ghabcdef"
-}

rotate :: [a] -> Int -> [a]
rotate xs count =
    let break = ((length xs) + count) `mod` (length xs)
        (grp1, grp2) = splitAt break xs
    in grp2 ++ grp1
