myButLast       :: [a] -> a
myButLast []     = error "No end - 1 in empty list"
myButLast [x]    = x
myButLast xs  = let endMinus1 = (length xs) - 2
                        in xs !! endMinus1
