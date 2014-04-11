{-
- Drop every Nth element from a list.
-
- Example:
- > dropEvery "abcdefghik" 3
- "abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs every =
    let (grp, rst) = splitAt every xs
        in init grp ++ dropEvery rst every


dropEvery' :: [a] -> Int -> [a]
dropEvery' xs every =
    let dropped = foldl remove ([],0) xs
        in fst dropped
    where remove acc x =
            let newAcc = (fst acc, (snd acc) + 1)
                counter = snd newAcc
                in if counter `mod` every == 0 then newAcc else (fst newAcc ++ [x], snd newAcc)
