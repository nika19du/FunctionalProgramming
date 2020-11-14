phoneBook =
  [ ("betty", "555-3433"),
    ("bonnie", "322-212"),
    ("patsy", "2323-2331"),
    ("lucile", "203-4422"),
    ("wendy", "0023-2495"),
    ("penny", "4034-4933")
  ]

findKey key [] = Nothing
findKey key ((k, v) : xs) =
  if key == k
    then Just v
    else findKey key xs