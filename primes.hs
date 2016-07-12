primes :: [Int]
primes = sieves [2..]

sieves :: [Int] -> [Int]
sieves (p:ns) = p : (sieves (filter (\n -> rem n p /= 0) ns))
