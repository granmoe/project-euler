module Solution exposing (..)

solution : Int
solution =
  List.range 1 999 |> List.filter (\n -> n % 3 == 0 || n % 5 == 0) |> List.sum

sumMultiples : List Int -> Int
sumMultiples list = List.sum <| List.filter (\n -> n % 3 == 0 || n % 5 == 0) list

solution2 : Int
solution2 = sumMultiples <| List.range 1 999