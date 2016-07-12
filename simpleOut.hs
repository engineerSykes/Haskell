module Main where

import Data.List

defaultName :: String
defaultName = "Beau Beau Brazille"

main = do
  putStrLn "Please enter your name: "
  name <- getLine
  if null name
    then putStrLn ("So you're name is " ++ defaultName ++ "?")
    else putStrLn ("Nice to meet you, " ++ name)
