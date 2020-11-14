repli [] _ = []
repli (x : xs) y =
  take y (repeat x) ++ repli xs y