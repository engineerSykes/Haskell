{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP.Conduit     (simpleHttp)
import qualified Data.Text as T
import Text.HTML.DOM            (parseLBS)
import Text.XML.Cursor          (Cursor, attributeIs, content, element
                                , FromDocument, child, ($//),(&|),(>=>))

-- the url we are going to search
url = "http://www.bing.com/search?q=school+of+haskell"

-- Test
-- main = L.putStrLn . L.take 1500 =<< simpleHttp url

-- the data we are going to search for
findNodes :: Cursor -> [Cursor]
findNodes = element "span" >=> attributeIs "id" "count >=> child

--extract the data from each node in turn
extractData = T.concat . content

-- Process the list of data elements
processData = putStrLn . T.unpack . T.concat

cursorFor :: String -> IO Cursor
cursorFor u = do
  page <- simpleHttp u
  return $ fromDocument $ parseLBS page

-- testFinale
main = do
  cursor <- cursorFor url
  processData $ cursor $// findNodes &| extractData
