log2n n =
  if n == 1
    then 0
    else 1 + log2n (div n 2)

main = do
  input <- getLine
  let n = read input :: Int
  putStrLn (show (log2n n))
