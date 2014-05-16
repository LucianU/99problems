{-
- Remove the K'th element from a list.
-
- Examples:
- > removeAt 2 "abcd"
- ('b', "acd")
-}

removeAt :: Int -> [a] -> (a, [a])
removeAt at xs =
    let (p1, (el:p2)) = splitAt (at-1) xs
        in (el, p1 ++ p2)
