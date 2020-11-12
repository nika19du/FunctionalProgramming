import Data.Char

sumList :: [Int] -> Int
sumList [] = 0
-- sumList items = head items + sumList (tail items)
sumList (x : xs) = x + sumList xs

--Factorial
fact 0 = 1
fact x = x * fact (x -1)

--Member func: check if elem contains in list, return boolean
member _ [] = False
member y (x : xs) = y == x || member y xs

--TRIM func: remove whitepsace
-- trimLeft :: String -> String
trimLeft = dropWhile isSpace

trim = reverse (trimLeft (reverse (trimLeft "--   niki --")))

trim2 = reverse . trimLeft . reverse . trimLeft
