--The prime factors of 13195 are 5, 7, 13 and 29.

--What is the largest prime factor of the number 600851475143 ?

isPrime k = null [ x | x <- [2..truncate $ sqrt(fromIntegral k)], k `mod` x == 0 ]

factors k = [x | x <- [2..(k-1)], k `mod` x == 0]

primeFactors = head . reverse . filter isPrime $ factors 600851475143