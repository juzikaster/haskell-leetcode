module Problems.TwoSum where

twoSum :: [Int] -> Int -> (Int, Int)
twoSum xs target = [(x,y) | x<-r, y<-r, x<y && xs !! x + xs !! y == target] !! 0 where
  r = [0..length xs - 1]
