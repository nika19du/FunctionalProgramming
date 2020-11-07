main = do
 input <- getLine
 let r = (read input :: Float)
 let area = pi * r *r;
 print (area)