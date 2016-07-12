{-# LANGUAGE NPlusKPatterns #-}

pow :: (Integral b, Num a) => a -> b -> a
pow x y = x ^ y

-- pow2 :: a -> a
pow2 x = (2 ^ x)

prod xs = foldl (*) 1 xs


double :: Num a => a -> a
double x = x + x

cube :: Num a => a -> a
cube x = x^3

square :: Num a => a -> a
square x = x * x

quadruple :: Num a => a -> a
quadruple x = double (double x)


add3nums :: Num a => a -> a -> a -> a
add3nums x y z = x + y + z

add5to2nums :: Num a => a -> a -> a
add5to2nums = add3nums 5


(&&)            :: Bool -> Bool -> Bool
True && True     = True
True && False    = False
False && True    = False
False && False   = False

(||)            :: Bool -> Bool -> Bool
True || True     = True
True || False    = True
False || True    = True
False || False   = False

not :: Bool -> Bool
not True = False
not False = True

(^^)            :: Bool -> Bool -> Bool
True ^^ True     = False
True ^^ False    = True
False ^^ True    = True
False ^^ False   = True

(!&)            :: Bool -> Bool -> Bool
True !& True     = False
True !& False    = True
False !& True    = True
False !& False   = True

factorial :: Int -> Int
factorial 0 = 1
factorial n = product [1..n]

factList :: [Int] -> Int
factList [] = 1
factList (x:xs) = x * factList xs

myProduct          :: [Int] -> Int
myProduct []        = 1
myProduct (n:ns)    = n * product ns

reverseList        :: [a] -> [a]
reverseList []      = []
reverseList (x:xs)  = reverse xs ++ [x]

myZip              :: [a] -> [b] -> [(a,b)]
myZip []   _        = []
myZip _    []       = []
myZip (x:xs) (y:ys) = (x,y) : myZip xs ys

dropBehindIndex             :: Int -> [a] -> [a]
dropBehindIndex 0   xs       = xs
dropBehindIndex (n+1)  []    = []
dropBehindIndex (n+1) (_:xs) = drop n xs

-- check to see if all values are true within a list
areTrue :: [Bool] -> Bool
areTrue xs = (length [x | x <- xs, x == True] == length xs)

a = [1,1,1,0,0,0,1,1,0,1]
b = map (==1) a

--quick sort
qsortInt          :: [Int] -> [Int]
qsortInt []        = []
qsortInt (x:xs)    =
  qsortInt smaller ++ [x] ++ qsortInt larger
  where
    smaller = [a | a <- xs a <= x]
    larger  = [b | b <- xs b  > x]
