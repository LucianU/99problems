{-
- Find the last but one element of a list
-}
myButLast :: [a] -> Either String a
myButLast [] = Left "Can't apply on an empty list"
myButLast (x:[]) = Left "Can't apply on a list with one element."
myButLast xs =
    getSec $ reverse xs
    where getSec (x:y:xs) = Right y
