{-
- Find the number of elements in a list
-}
myLength :: (Integral b) => [a] -> b
myLength = foldl (\acc _ -> acc + 1) 0

myLength' xs = sum $ foldr (\_ acc -> 1:acc) [] xs
