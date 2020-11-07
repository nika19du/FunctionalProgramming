main = do
 doWork

doWork = do
 first <- getLine
 sec <-getLine
 putStrLn (first++" "++sec)