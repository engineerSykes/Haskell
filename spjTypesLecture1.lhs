From Simon Peyton Jones lectures on Type Classes in Haskell

From Lecture 1 at approximately time 32:17
on slide projection
>import Prelude
>class Eq a where
>  (==) :: a -> a -> Bool

>instance Eq a => Eq [a] where
>  (==) []     []     =  True
>  (==) (x:xs) (y:ys) =  x==y && xs == ys
>  (==) _      _      =  False

>data Eq = MkEq  (a->a->Bool)
>(==) (MkEq eq) = eq

>dEqList :: Eq a -> Eq [a]
>dEqList d = MkEq eql
>   where
>     eql []     []     = True
>     eql (x:xs) (y:ys) = x==y && xs==ys
>     eql _      _      = False

dEqList is the data constructor for the Eq List type
allowing for equality to be checked over lists
i.e. if [a] == [b]
        then THEY ARE EQUAL DO THIS
        else THEY ARE NOT EQUAL
