import Data.List
import Data.Int

--islower :: Char -> Bool
--islower x = |True,  x `elem` ['a'..'z'] then True
--           |otherwise False

-- lowers :: String -> Int
-- lowers xs = length [x | x <- xs, isLower x]

reverse'       :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

positions     :: Eq a => a -> [a] -> [Int]
-- positions []   = 0
-- positions _ xs = xs
positions x xs = [i | (x',i) <- zip xs [0..n], x == x']
                 where n = length xs - 1

factorial    :: [Int] -> Int
factorial []  = 1
factorial (x:xs) = x * factorial xs

qsort       :: [Int] -> [Int]
qsort []     = []
qsort (x:xs) =
             qsort smaller ++ [x] ++ qsort larger
             where
               smaller = [a | a <- xs, a <= x]
               larger  = [b | b <- xs, b  > x]

convertToInt16       :: [Int] -> [Int16]
convertToInt16 []     = []
-- convertToInt16 (x:xs) =

-- sqrt' :: (Num a, Integral b) => b -> a
-- sqrt' n = (fromIntegral n)

listFromInteger    :: [Integer] -> [Int]
listFromInteger []  = []
listFromInteger (x:xs) = fromInteger x : listFromInteger xs
