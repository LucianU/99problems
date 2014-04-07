{-
- Flatten nested list structure.
- Transform a list, possibly holding lists as elements into "flat" list by
- replacing each list with its elements (recursively)
-}

data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List ((Elem x): [])) = [x]
flatten (List ((Elem x): xs)) = x : flatten (List xs)
