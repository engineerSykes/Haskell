module Main where

str1 = ["Hello","Romeo","Juliet","loved","always!"]

makeList     :: [String] -> IO ()
makeList str  = putStrLn $ unlines str

z = [1..40]

-- Listing of numbers to 40
main = do
         makeList [show x | x <- z]
