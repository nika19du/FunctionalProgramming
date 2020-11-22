main = do
 input <- getLine
 let n=read input :: Int
 putStrLn(show(doWord n 0))

doWord newNum endSum=
 if newNum < 1 
  then endSum
 else doWord (div newNum 10)(endSum + (mod newNum 10))