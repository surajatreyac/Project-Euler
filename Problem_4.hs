--A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

--Find the largest palindrome made from the product of two 3-digit numbers.


import Control.Applicative
import Data.List

isPalindrome :: String -> Bool
isPalindrome str = str == reverse str

tripleDigits = pure (*) <*> [100..999] <*> [100..999]

convertNumToString = map (\x -> show x) tripleDigits

temp = filter isPalindrome convertNumToString

convertStringToNum = map (\x -> read x :: Integer) temp

main = do 
       let highPalin = head . reverse . sort $ convertStringToNum
       print highPalin