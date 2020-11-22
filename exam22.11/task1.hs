import Data.List

--aritmetichno delenie
--input: 2222
--output: 2
-- 2+2+2+2=8/len 4=2

main :: IO ()
main = do
  input <- getLine
  let n = read input :: Int
  let num = doWord n 0
  let s = length (input)
  putStrLn (show (quot (num) (s)))

doWord newNum endSum =
  if newNum < 1
    then endSum
    else doWord (div newNum 10) (endSum + (mod newNum 10))
