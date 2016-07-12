myLast       :: [a] -> a
myLast []     = error "No end for an empty list!!"
myLast [x]    = x
myLast (_:xs) = myLast xs

myLast' = head . reverse
