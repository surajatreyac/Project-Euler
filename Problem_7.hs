--By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
--we can see that the 6th prime is 13.

--What is the 10001st prime number?

isPrime k = null [ x | x <- [2..truncate $ sqrt(fromIntegral k)], k `mod` x == 0 ]

main = do
       let primeNumber = snd . head . reverse . zip [1..10001]  $ filter isPrime [2..]
       print primeNumber