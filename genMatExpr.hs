generateMath list=
 if null (tail list)
  then show (head list)
 else 
  ("("++(show(head list))++"+"++(generateMath(tail list))++")")


main = do
 print (generateMath [1, 2, 3, 4,5])
