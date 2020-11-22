minElem [] = 0
minElem [x] = x
minElem (x : y : xs)
  | x > y = minElem (y : xs)
  | x < y = minElem (x : xs)
  | x == y = minElem (x : xs)

main = do
  string <- getLine
  let list = map (read . (: "")) string :: [Int]
  putStrLn (show (minElem list))

-- main :: IO ()
-- main = do
--   x <- getLine
--   let lis = read x :: Int
--   let l = createLis lis []
--   let min = minFromList l
--   if min == 0
--     then putStrLn (show (1))
--     else putStrLn (show (min))

-- createLis :: Integral a => a -> [a] -> [a]
-- createLis newNum endLis =
--   if newNum < 1
--     then endLis
--     else createLis (div newNum 10) ((mod newNum 10) : endLis)

-- minFromList [] = 1
-- minFromList list = foldl min (head list) list
