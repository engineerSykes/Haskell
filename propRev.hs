import Test.QuickCheck

propRev :: [Int] -> Bool
propRev xs = reverse (reverse xs) == reverse (reverse xs)

propRevApp :: [Int] -> [Int] -> Bool
propRevApp xs ys = reverse (xs++ys) == reverse ys ++ reverse xs
