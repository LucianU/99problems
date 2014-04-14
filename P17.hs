{-
- Split a list into two parts; the length of the first part is given.
- Do not use any predefined predicates.
-
- Example:
- > split "abcdefghik" 3
- ("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])
split xs at
    | at > (length xs) || at <= 0 = ([],xs)
    | otherwise =
        let step g1 g2@(y:ys) c
                | c == at = (g1,g2)
                | otherwise = step (g1 ++ [y]) ys (c+1)
            in step [] xs 0


split' :: [a] -> Int -> ([a], [a])
split' xs at =
    let step (g1,g2,c) x
            | c < at = (g1 ++ [x],g2,c+1)
            | otherwise = (g1,g2 ++ [x],c+1)
        in let (g1,g2,_) = foldl step ([],[],0) xs
               in (g1,g2)
