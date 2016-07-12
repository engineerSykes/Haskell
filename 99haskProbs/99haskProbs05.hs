list      = [1..8] :: [Int]
listAlpha = ['a'..'z'] :: [Char]

myReverse       :: [a] -> [a]
myReverse []     = []
myReverse [x]    = [x]
myReverse (x:xs) = myReverse xs ++ [x]
