fib x value prevVal index=
  if index > x
    then value
  else fib x (value +prevVal) value(index + 1)

fibonacii x=fib x 1 0 2

main = do
  input <- getLine
  let x=read input:: Int
  let y = fibonacii x
  putStrLn(show y)

