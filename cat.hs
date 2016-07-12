module Main where

import Data.Foldable      (forM_)
import System.Environment (getArgs)

main :: IO()
main = do
  --get args
  args <- getArgs
  -- read the named Files
  fileContents <- mapM readFile args
  -- print contents of files to screen
  forM_ fileContents putStrLn
