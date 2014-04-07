{-
- Find out whether a list is a palindrome. A palindrome can be read forward
- or backward; e.g. (xamax).
-}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome l = l == reverse l
