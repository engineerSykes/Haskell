list      = [1..8]
listAlpha = ['a'..'z']

myLength        :: [a] -> Int
myLength []      = error "Zero Elements in empty list"
myLength [x]     = 1
myLength (x:xs)  = 1 + myLength xs
