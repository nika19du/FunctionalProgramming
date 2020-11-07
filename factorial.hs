factorial n =
  if n == 1
    then 1
    else n * factorial (n -1)

main = do
  input <- getLine
  let n = read input :: Int
  let result = factorial n
  print (result)