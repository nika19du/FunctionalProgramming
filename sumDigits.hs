main :: IO ()
main = do
  sumDigits
sumDigits = do
  fNum <- getLine 
  sNum <- getLine
  let f = (read fNum :: Int)
  let s = (read sNum :: Int)
  print(f*s)