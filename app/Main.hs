module Main where

import Data.List

twoSum :: [Int] -> Int -> (Int, Int)
twoSum xs target = [(x,y) | x<-r, y<-r, x<y && xs !! x + xs !! y == target] !! 0 where
  r = [0..length xs - 1]

medianOfTwoSortedArrays :: [Int] -> [Int] -> Float
medianOfTwoSortedArrays n1 n2 = do
  let n3 = sort (n1 ++ n2)
  if length n3 `mod` 2 == 1
    then fromIntegral (n3 !! (length n3 `div` 2))
    else do
      let center = length n3 `div` 2
      (fromIntegral (n3 !! (center - 1)) + fromIntegral (n3 !! center)) / 2

main :: IO ()
main = do
  putStrLn (show (twoSum [2,7,11,15] 9))
  putStrLn (show (medianOfTwoSortedArrays [2,4] [8,10]))
