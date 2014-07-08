--The sum of the squares of the first ten natural numbers is,
--12 + 22 + ... + 102 = 385

--The square of the sum of the first ten natural numbers is,
--(1 + 2 + ... + 10)2 = 552 = 3025

--Hence the difference between the sum of the squares of the first ten 
--natural numbers and the square of the sum is 3025 − 385 = 2640.

--Find the difference between the sum of the squares of the first one hundred 
--natural numbers and the square of the sum.


square x = x * x

sumOfSquares :: (Num a, Enum a) => a -> a
sumOfSquares x = sum $ map square [1..x]  

squareOfSum :: (Num a, Enum a) => a -> a
squareOfSum x = square $ sum [1..x]


main = do
       let diff x = squareOfSum x - sumOfSquares x
       print $ diff 100