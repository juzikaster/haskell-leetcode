module Main where

import Problems.TwoSum
import Problems.MedianOfTwoSortedArrays
import Problems.ReverseInteger

main :: IO ()
main = do
  putStrLn (show (twoSum [2,7,11,15] 9))
  putStrLn (show (medianOfTwoSortedArrays [2,4] [8,10]))
  putStrLn (show (reverseInteger 120))
