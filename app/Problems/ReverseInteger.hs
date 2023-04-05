module Problems.ReverseInteger where

reverseInteger :: Int -> Int
reverseInteger x = read (reverse (show x))
