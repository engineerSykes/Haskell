list = [1..8]
listAlpha = ['a'..'o']

elementAt          :: [a] -> Int -> a
elementAt [] _      = error "No Elements at position in an empty list!"
elementAt xs n
             |n > length xs = error "position is greater than the amount of elements in the list"
             |n >= 1        = xs !! (n-1)
             |otherwise     = error "element position cannot be less than 1"
