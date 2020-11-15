import System.Exit (exitSuccess)

main = do
 doWork

doWork = do
 answer <- getLine
 if answer == "End"
  then exitSuccess
 else 
  case  answer of 
  ("0") -> putStrLn "Zero"
  ("1") -> putStrLn "One"
  ("2") -> putStrLn "Two"
  ("3") -> putStrLn "Three"
  ("4") -> putStrLn "Four"
  ("5") -> putStrLn "Five"
  ("6") -> putStrLn  "Six"
  ("7") -> putStrLn "Seven"
  ("8") -> putStrLn "Eight"
  ("9") -> putStrLn "Nine"
  otherwise -> putStrLn "Please only enter single digit positive numbers"
 doWork