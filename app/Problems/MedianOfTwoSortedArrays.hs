module Problems.MedianOfTwoSortedArrays where

import Data.List

medianOfTwoSortedArrays :: [Int] -> [Int] -> Float
medianOfTwoSortedArrays n1 n2 = do
  let n3 = sort (n1 ++ n2)
  if length n3 `mod` 2 == 1
    then fromIntegral (n3 !! (length n3 `div` 2))
    else do
      let center = length n3 `div` 2
      (fromIntegral (n3 !! (center - 1)) + fromIntegral (n3 !! center)) / 2
