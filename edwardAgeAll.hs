module Main where

import Data.Time

timeSinceBirth             :: UTCTime -> NominalDiffTime
timeSinceBirth viewingTime  = diffUTCTime viewingTime birthTime

birthTime =
  localTimeToUTC pacific (LocalTime day time)

day         = fromGregorian  2010 1 14
time        = TimeOfDay 22 57 00
pacific     = hoursToTimeZone (-7)

main = do
  now <- getCurrentTime
  putStrLn ""
  putStrLn "Edward is now: "
  putStrLn "|**********************************|"
  putStrLn ((show (timeSinceBirth now)) ++ " secs old")
  putStrLn (((show (timeSinceBirth now / 60))) ++ " mins old")
  putStrLn (((show (timeSinceBirth now / 60 / 60))) ++ " hours old")
  putStrLn (((show (timeSinceBirth now / 60 / 60 / 24))) ++ " days old")
  putStrLn (((show (timeSinceBirth now / 60 / 60 / 24 / 7))) ++ " weeks old")
  putStrLn (((show (timeSinceBirth now / 60 / 60 / 24 / 30))) ++ " months old")
  putStrLn (((show (timeSinceBirth now / 60 / 60 / 24 / 7 / 52))) ++ " years old")


-- showSeconds = do
--   lengthSeconds = length $ show (timeSinceBirth now)
--   if (lengthSeconds < 35)
--     then let
--          a = [a | a <- [1..(35 - lengthSeconds)]
--          insertSpaces [] = 0
--          insertSpaces (a:as) = " " : insertSpaces as
