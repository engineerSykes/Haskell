module Parsing where

import Data.Char
import Control.Monad

infixr 5 +++

newtype Parser a                 = P ([Char] -> [(a,[Char])])

instance Monad Parser where
  return v                       = P (\inp -> [(v, inp)])
  p >>= f                        = P (\inp -> case parse p inp of
                                              []        -> []
                                              [(v,out)] -> parse (f v) out)

instance MonadPlus Parser where
  mzero                          = P (\inp -> [])
  p `mplus` q                    = P (\inp -> case parse p inp of
                                              []      -> parse q inp
                                              [(v,out)] -> [(v, out)])

-- Generic parsers --


-- secChar :: [Char] -> [(Char,[Char])]
-- secChar (x:xs) = item xs

failure                         :: Parser a
failure                          = mzero

item                            :: Parser Char
item                             = P (\inp -> case inp of
                                            []     -> []
                                            (x:xs) -> [(x,xs)])

parse                           :: Parser a -> String  -> [(a, String)]
parse (P p) inp                  = p inp

-- return                       :: a -> Parser a
-- return v                      = (\inp -> [(v,inp)])

-- Choice Parsers --
(+++)                           :: Parser a -> Parser a -> Parser a
p +++ q                          = p `mplus` q

-- Derived Primitives

sat                             :: (Char -> Bool) -> Parser Char
sat p                            = do
                                     x <- item
                                     if p x
                                       then return x
                                       else failure

digit                           :: Parser Char
digit                            = sat isDigit

lower                           :: Parser Char
lower                            = sat isLower

upper                           :: Parser Char
upper                            = sat isUpper

letter                           :: Parser Char
letter                            = sat isAlpha

alphaNum                         :: Parser Char
alphaNum                          = sat isAlphaNum

char                             :: Char -> Parser Char
char x                            = sat (== x)

string                           :: String -> Parser String
string []                         = return []
string (x:xs)                     = do
                                      char x
                                      string xs
                                      return (x:xs)

many                             :: Parser a -> Parser [a]
many p                            = many1 p +++ return []

many1                             :: Parser a -> Parser [a]
many1 p                            = do v <- p
                                        vs <- many p
                                        return (v:vs)

ident                             :: Parser String
ident                              = do x <- lower
                                        xs <- many alphaNum
                                        return (x:xs)
