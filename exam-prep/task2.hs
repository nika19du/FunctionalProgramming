main = do
  x <- getLine
  y <- getLine
  let num = read y :: Int
  let lis = read x :: Int
  putStrLn (show (doRotations num (createLis lis []) 0))

doRotations numRotations inputlis counter =
  if numRotations == counter
    then inputlis
    else doRotations numRotations (inverse inputlis) (counter + 1)

inverse inputlis =
  ((tail inputlis) ++ [(head inputlis)])

createLis newNum endLis =
  if newNum < 1
    then endLis
    else createLis (div newNum 10) ((mod newNum 10) : endLis)