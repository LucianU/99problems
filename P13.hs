{-
- Run-length encoding of a list (direct solution).
- Implement the so-called run-length encoding data compression method
- directly, i.e. don't explicitly create the sublists containing the
- duplicates, as in problem 9, but only count them. As in problem 11,
- simplify the result list by replacing the singleton lists (1 x) by X.
-}

import qualified P11

encodeDirect :: (Eq a) => [a] -> [P11.Element a]
encodeDirect [] = []
encodeDirect all@(x:xs) =
    let (block, rest) = span (==x) all
        in trans block : encodeDirect rest
    where trans (x:[]) = P11.Single x
          trans all@(x:xs) = P11.Multiple (length all) x
