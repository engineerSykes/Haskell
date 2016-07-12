lst = [1..25] :: [Integer]

sumtorial  :: Integer -> Integer
sumtorial 1 = 1
sumtorial n = n + (2* (sumtorial (n-1)))

hailstone   :: Integer -> Integer
hailstone n
          |mod n 2 == 0  = div n 2
          |otherwise     = 3 * n + 1

multAll3 :: [Integer] -> Integer
multAll3 list = sum (map (3*) list)

avgList :: [Integer] -> Integer
avgList list = (sum list) `div` 2

biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

list1 = [0..20] :: [Integer]
list2 = reverse [0..20] :: [Integer]

listPairs = zip list1 list2

sumPairs            :: [(Integer, Integer)] -> [Integer]
sumPairs []          = []
sumPairs ((x,y): zs) = x+y : sumPairs zs

hailstoneSeq      :: Integer -> [Integer]
hailstoneSeq 1     = [1]
hailstoneSeq n     =  n : hailstoneSeq (hailstone n)


removeNonUpperCase    :: String -> String
removeNonUpperCase st  = [c | c <- st, elem c ['A'..'Z']]

removeNonLowerCase    :: String -> String
removeNonLowerCase st  = [c | c <- st, elem c ['a'..'z']]

addThree      :: Integer ->Integer ->Integer -> [Integer]
addThree x y z = [x + y + z]

circumference        :: Float -> Float
circumference radius  = 2 * pi * (radius*2)

radToDeg     :: Float -> Float
radToDeg rads = rads * (180 / pi)

areaSquare     :: Num a => a -> a
areaSquare side = side^2

areaCircle       :: Float -> Float
areaCircle radius =  radius^2 * pi

areaRect      :: Num a => a -> a -> a
areaRect s1 s2 = (s1*2) + (s2*2)

volCube     :: Num a => a -> a
volCube side = side^3

volRectSolid      :: Num a => a -> a -> a -> a
volRectSolid w h d = w * h * d

volCyl         :: Float -> Float -> Float
volCyl radius h = radius^2 * pi * h
