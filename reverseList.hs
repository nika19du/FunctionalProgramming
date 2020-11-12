-- createReverseList :: (Ord t, Num t) => t -> t -> [t]
-- createReverseList start end= createReverseListLoop [] start end

-- createReverseListLoop list start end=
--  if start > end
--   then list
--  else createReverseListLoop(start : list) (start+1) end

-- main = do
--  putStrLn(show(createReverseList 1 10))

main = do
  let x = [1 .. 10]
  putStrLn "Our list is:"
  print (x)
  putStrLn "Our length is:"
  print (length x)
  putStr (show ("Take first 5 elements: "))
  print (take 5 (x))
  putStr (show ("Drop first 5 elements: "))
  print (drop 5 (x))
  putStrLn "The list in Reverse Order is:"
  print (reverse x)
  putStrLn "Does it contain he 332?"
  print (elem 332 (x))
  putStrLn "Our list without the last num:"
  print (init x)