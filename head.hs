module Main where

import Data.Foldable          (forM_)
import Options.Applicative    (Parser, ParserInfo, argument, auto, execParser,
                               fullDesc, header, help, helper, info, long, metavar,
                               option, progDesc, short, str, value, (<$>), (<>), (<*>))

-- head program
main :: IO()
main = do
  -- run parser over cli arguments
  opts <- execParser optsParserInfo
  -- read the File
  fileContents <- readFile $ filename opts
  -- split the contents of the file in to lines
  let fileLines = lines fileContents
  -- take the number of the lines specified in the options
  let headLines = take (linecount opts) fileLines
  --print the desired lines
  forM_ headLines putStrLn

  --Structure for the cli arguments
data Options = Options { filename :: String, linecount :: Int }

-- Parser for the cli arguments
optsParser :: Parser Options
optsParser = Options
  <$> argument str
    ( metavar "FILENAME"
    <> help "Input filename"
    )

  <*> option auto
    ( short 'n'
    <> long "numlines"
    <> metavar "NUM"
    <> help "number of Lines to read"
    <> value 10
    )

-- Adding program help text to the Parser
optsParserInfo :: ParserInfo Options
optsParserInfo = info (helper <*> optsParser)
  ( fullDesc
  <> progDesc "A bad Clone of Head"
  <> header   "Head -- a bad clone of the real Head"
  )
