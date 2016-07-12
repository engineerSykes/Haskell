import Data.List

lst :: [Int]
lst = [2,5,2,7,8,7,4,9]

add1 :: Int -> Int
add1 x = x + 1

add2 :: Int -> Int
add2 x = x + 2

f :: (Int -> Int) -> Int
f x = 3

g :: Int -> (Int -> Int)
g x y = 6 + x + y

h :: Int -> (Int -> Int)
h x y = x + y

sum3 :: Int -> Int -> Int -> Int
sum3 a b c = a + b + c

pow2 :: Int -> Int
pow2 = (2^)

add2ToEach :: [Int] -> [Int]
add2ToEach x = map (add2) x


add1ToEach :: [Int] -> [Int]
add1ToEach [] = []
add1ToEach (x:xs) = add1 x : add1ToEach xs
