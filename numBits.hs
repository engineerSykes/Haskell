-- Creates a tuple of how many integers 2^x can represent
numBits64 = zip [(show x) ++ " Bits" | x <- [1..64]] [2^x | x <- [1..64]]
