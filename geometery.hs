module Geometery where

data Rect = MakeRect { width  :: Num a => a
                     . height :: Num a => a
                     . depth  :: Num a =>
                     }

newRect  = MakeRect { width  = 5.0
                    . heigth = 5.0
                    . depth  = 7.5
                    }


lst = [1..25] :: [Integer]

circumference        :: Float -> Float
circumference radius  = 2 * pi * radius

radToDeg     :: Float -> Float
radToDeg rads = rads * (180 / pi)

areaSquare     :: Num a => a -> a
areaSquare side = side^2

areaCircle       :: Float -> Float
areaCircle radius =  radius^2 * pi

areaRect      :: Num a => a -> a -> a
areaRect s1 s2 = (s1*2) + (s2*2)

-- |This function calculates the volume inside a cube (s^3, s*s*s)
-- >>> volCube 5
-- 125
volCube     :: Num a => a -> a
volCube side = side^3

-- |This function calculates the volume inside a rectangular solid (w*h*d)
-- >>> volRectSolid 5 2 10
-- 100
volRectSolid      :: Num a => a -> a -> a -> a
volRectSolid w h d = w * h * d

-- |This function calculates the volume inside a cylinder ((2pi) * radius^2))
-- >>> volCyl 1 10
-- 62.83185307179586
volCyl         :: Float -> Float -> Float
volCyl radius h = radius^2 * pi * h
