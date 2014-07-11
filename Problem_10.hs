--The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--Find the sum of all the primes below two million.

isPrime k = null [ x | x <- [2..truncate $ sqrt(fromIntegral k)], k `mod` x == 0 ]

primesBelowTwoMillion = sum . takeWhile (<2000000) $ filter isPrime [2..]

main = do
       let p = primesBelowTwoMillion
       print p