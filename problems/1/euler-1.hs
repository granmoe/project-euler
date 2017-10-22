{-
  Multiples of 3 and 5
  Problem 1 
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
-}

module Euler.One
(
  solution,
  listComprehension
) where

solution :: Int
solution = sum $ takeWhile (<1000) $ filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1..]

listComprehension :: Int
listComprehension = sum [x | x <- [1..999], mod x 3 == 0 || mod x 5 == 0]

-- I didn't even get to use foldl (+) 0 because sum is built-in ;P
