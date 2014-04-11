{-
- Duplicate the elements of a list.
-
- Example:
- > dupli [1,2,3]
- [1,1,2,2,3,3]
-}

dupli :: [a] -> [a]
dupli = foldr duplItem []
    where duplItem x acc = (take 2 $ repeat x) ++ acc
