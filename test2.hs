module Main where

a = "hello"
b = [1,2,3,4,5,6,7,8,9,10]
c = [4,1,5,8,3,5,1,98]

length'       :: [a] -> Int
length' []     = 0
length' (x:xs) = 1 + length' xs

length''         :: [a] -> Int
length'' []       = 0
length'' (_:xs)   = 1 + length xs

length'''        :: [a] -> Integer
length''' []      = 0
-- length''' xs      = foldl (1+) 0 : length''' xs


reverse'       :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

const'    :: a -> b -> a
const' x _ = x

id' :: a -> a
id' x = x

zip'              :: [a] -> [b] -> [(a,b)]
zip' []     _      = []
zip' _      []     = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

zipThree                     :: [a] -> [b] -> [c] -> [(a,b,c)]
zipThree []     _      _      = []
zipThree _      _      []     = []
zipThree _      []     _      = []
zipThree (x:xs) (y:ys) (z:zs) = (x,y,z) : zipThree xs ys zs

alphaEnum = zipThree [1..28] ['A'..'Z'] ['a'..'z']

showAlphaEnum = [print $ show (alphaEnum !! x) | x <- [1..26]]

qsort        :: (Num a, Ord a) => [a] -> [a]
qsort []      = []
qsort (x:xs)  = qsort smaller ++ [x] ++ qsort larger
              where
                smaller = [a | a <- xs, a <= x]
                larger  = [b | b <- xs, b >  x]

-- qsortChar       :: (Ord a) => [a] -> [a]
-- qsortChar []     = []
-- qsortChar (x:xs) = qsort before ++ [x] ++ qsort after
--                  where
--                    before = [a | a <- xs, a <= x]
--                    after  = [b | b <- xs, b >  x]


myTup = [(1,2),(3,4),(5,6),(7,8),(9,0)] :: [(Int, Int)]

lst1to10   = [1..10] :: [Int]
lst10Alpha = ['A'..'Z']

tup1to10 = zip lst1to10 lst10Alpha
