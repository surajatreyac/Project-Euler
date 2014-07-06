--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--Find the sum of all the multiples of 3 or 5 below 1000.

import Data.List

multiple3 :: (Integral a) => a -> Bool
multiple3 x = x `mod` 3 == 0 

multiple5 :: (Integral a) => a -> Bool
multiple5 x = x `mod` 5 == 0 

sum' :: (Integral a) => [a] -> a
sum' = sum

multiple3_5 :: (Integral a) => a -> a
multiple3_5 x = sum' $ nub $ filter multiple3 [1..x-1] ++ 
								filter multiple5 [1..x-1] 

