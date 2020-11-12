main = do
  let input = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let a = takeEvery 3 input
  putStrLn (show (a))
  --1 2 3 4 5 6 7 8 9
  --0 1 2 3 4 5 6 7 8
  let x = deleteN 2 input
  --1 2 4 5 6 7 8 9
  --0 1 2 3 4 5 6 7
  let y = deleteN 4 x
  let j = deleteN 6 y
  --1 2 4 5 7 8 9
  --0 1 2 3 4 5 6
  putStrLn (show (j))

--output:[1,2,4,5,7,8]
-- putStrLn (show (everynth 3 input))
-- putStrLn (show (input))
-- vruja elem za triene, podavam indexa i vruja elem
takeEvery n x = (map snd) . (filter ((n ==) . fst)) . zip (concat . repeat $ [1 .. n]) $ x

deleteN :: Int -> [a] -> [a]
deleteN _ [] = []
deleteN i (a : as)
  | i == 0 = as
  | otherwise = a : deleteN (i -1) as

-- deleteAt idx xs = lft ++ rgt
--   where
--     (lft, (_ : rgt)) = splitAt idx xs

-- nThElement  3

-- nThElement nums index = do
--print (nums !! (index -1))
-- let n = (nums !! (index -1))
-- deleteAt ((nums !! (index -1)) [1, 2, 3, 4, 5, 6, 7, 8, 9])

-- deleteAt :: Int -> [a] -> [a]
-- deleteAt 0 (x : xs) = xs
-- deleteAt n (x : xs)
--   | n >= 0 =
--     x : (deleteAt (n -1) xs)
-- deleteAt _ _ = error "index out of range "