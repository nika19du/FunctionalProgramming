fib :: Int -> Int
fib x =
  if x <= 1
    then x
    else fib (x - 1) + fib (x - 2)

main = do
  input <- getLine
  let x = read input :: Int
  let a = fib x
  print (a)
