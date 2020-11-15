main = do
 input <- getLine
 let n = read input :: Int
 command <- getLine
 doWork n command

doWork n command = 
 if command == "add1"
  then putStrLn(show(n+1))
 else 
  putStrLn(show(n-1))