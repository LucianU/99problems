{-
- Decode a run-length encoded list.
- Given a run-length code list generated as specified in problem 11,
- construct its uncompressed version.
-
- Example:
- > decode [Multiple 4 'a',Single 'b',Multiple 2 'c',
-           Multiple 2 'a',Single 'd',Multiple 4 'e']
- "aaaabccaadeeee"
-}

import qualified P11

decode :: [P11.Element a] -> [a]
decode = foldl (\acc x -> acc ++ trans x) []
    where trans (P11.Single x) = [x]
          trans (P11.Multiple count x) = take count $ repeat x
