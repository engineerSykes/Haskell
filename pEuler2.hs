{-# LANGUAGE BangPatterns #-}
import Data.List
import Control.Monad.State

fibMonadic n = flip evalState (0,1) $ do
  forM [0..(n-1)] $ \_ -> do
    (a,b) <- get
    put (b,a+b)
  (a,b) <- get
  return a

fibBang n = go n (0,1)
  where
    go !n (!a, !b) | n==0      = a
                   | otherwise = go (n-1) (b, a+b)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fib' :: Int -> Int
fib' 0 = 1
fib' 1 = 2
fib' n = fib (n-1) + fib (n-2)

sumAllEvenTerms    :: [Int] -> Int
sumAllEvenTerms []  = 0
-- sumAllEvenTerms (x:xs) = 1 : 2 : (()())

sq :: Int -> Int
sq x = x * x

fastFib = fst . fib2
fib2 0 = (1,1)
fib2 1 = (1,2)
fib2 n
  |even n      = (sq a + sq b, sq c - sq a)
  |otherwise   = (sq c + sq a, sq b + sq c)
  where (a,b) = fib2 (n `div` 2 - 1)
        c     = a + b
