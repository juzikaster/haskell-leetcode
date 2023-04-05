module Problems.MergeTwoSortedLists where

import Data.List

mergeTwoSortedLists :: [Int] -> [Int] -> [Int]
mergeTwoSortedLists xs1 xs2 = sort (xs1 ++ xs2)
