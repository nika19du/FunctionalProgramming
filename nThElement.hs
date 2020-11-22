nThElementLoop list listLength n index =
  if n >= listLength || n < 0
    then error "Index out of bounds of array"
    else
      if index == n
        then (head list)
        else nThElementLoop (tail list) listLength n (index + 1)

nThElement list n = nThElementLoop list (length list) n 0
nThElement [] _ = error "Empty list"

main = do
  let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  putStrLn (show (nThElement list 3)) -- 4