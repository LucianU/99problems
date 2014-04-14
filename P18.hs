{-
- Extract a slice from a list.
- Given two indices, i and k, the slice is the list containing the elements
- between the i'th and the k'th element of the original list (both limits
- included). Start counting the elements with 1.
-
- Example:
- > slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
- "cdefg"
-}

slice :: [a] -> Int -> Int -> [a]
slice xs start end
    | (start < 0) || (end < 0) = error "Can't have negative start or end."
    | otherwise =
        -- Because we want to include the starting and ending elements, we
        -- split before the start.
        let (_,rst) = splitAt (start-1) xs
            (slice',_) = splitAt (end - (start-1)) rst
        in slice'

slice' :: [a] -> Int -> Int -> [a]
slice' xs start end =
    let slice'' (piece,_) [] = piece
        slice'' (piece,counter) (y:ys)
            | counter < start = slice'' (piece,counter+1) ys
            | counter > end = piece
            | otherwise = slice'' (piece ++ [y],counter+1) ys
        in slice'' ([],1) xs
