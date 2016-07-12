module Main where

import Data.List          (intercalate)
import System.Environment (getArgs)

main :: IO()
main = do
  --get args
  args <- getArgs
  -- do something with the args
  let output = intercalate " " args
  -- print the output to screen
  putStrLn output
