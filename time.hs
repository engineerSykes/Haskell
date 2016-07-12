module Main where

import Data.Time

presentationAge             :: UTCTime -> NominalDiffTime
presentationAge viewingTime  = diffUTCTime viewingTime showingTime

showingTime =
  localTimeToUTC pacific (LocalTime day time)

day         = fromGregorian  2015 6 11
time        = TimeOfDay 15 15 00
pacific     = hoursToTimeZone (-7)

main = do
  now <- getCurrentTime
  putStrLn "Owen is now: "
  putStrLn "************************* \n"
  putStrLn ((show (presentationAge now)) ++ " secs old")
  putStrLn (((show (presentationAge now / 60))) ++ " mins old")
  putStrLn (((show (presentationAge now / 60 / 60))) ++ " hours old")
  putStrLn (((show (presentationAge now / 60 / 60 / 24))) ++ " days old")
  putStrLn (((show (presentationAge now / 60 / 60 / 24 / 7))) ++ " weeks old")
  putStrLn (((show (presentationAge now / 60 / 60 / 24 / 30))) ++ " months old")
  putStrLn (((show (presentationAge now / 60 / 60 / 24 / 7 / 52))) ++ " years old")
