{-
- Find the K'th element of a list. The first element in the list is number
- 1.
-}
elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) ind
    | ind <= 0 = error "Invalid index."
    | otherwise = elementAt xs (ind-1)
