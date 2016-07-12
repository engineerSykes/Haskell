list      = [1..15] :: [Int]
listAlpha = ['a'..'z'] :: [Char]

boomBang xs = zip [x | x <- xs,  x /= 15, x /= 5]
                  [if (mod x 5 == 0)
                      then "BOOM"
                      else "BANG"
                   | x <- xs, x /= 15, x /= 5]

numBits64 = zip [(show x) ++ " Bits\n" | x <- [1..64]] [2^x | x <- [1..64]]


nouns = ["hobo","frog","dude"]
adjectives = ["lazy","grouchy","bitchy","sexing","texting"]

connect = zip [1..15] [adjective++ " " ++noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <-xs]

removeNonUpperCase st = [c | c <- st, elem c ['A'..'Z']]
removeNonLowerCase st = [c | c <- st, elem c ['a'..'z']]

triangles = [[x,y,z] | z <- [1..10],y <- [1..z],x <- [1..y], x^2 + y^2 == z^2 && x+y+z == 24]

sum'       :: [Int] -> Int
sum' []     = 0
sum' [x]    = x
sum' (x:xs) = x + sum' xs

sum'' :: [Int] -> Int
sum'' xs = foldl (\x acc -> x + acc) 0 xs

length'' :: [a] -> Int
length''  = foldr (\_ n -> n+1) 0

odd' = not . even

sumtorial  :: Integer -> Integer
sumtorial 1 = 1
sumtorial n = n + (2* (sumtorial (n-1)))
