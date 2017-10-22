{-
  Multiples of 3 and 5
  Problem 1 
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
-}

module Solution exposing (..)

solution : Int
solution =
  List.range 1 999 |> List.filter (\n -> n % 3 == 0 || n % 5 == 0) |> List.sum

sumMultiples : List Int -> Int
sumMultiples list = List.sum <| List.filter (\n -> n % 3 == 0 || n % 5 == 0) list

solution2 : Int
solution2 = sumMultiples <| List.range 1 999
