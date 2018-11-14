{-
Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.

# Input format

The first line contains an integer, `n`, denoting the size of the array. 
The second line contains `n` space-separated integers describing an array of numbers 

# Sample input

```
6
-4 3 -9 0 4 1
```

# Sample output

```
0.500000
0.333333
0.166667
```

 -}

plusMinus :: [Int] -> [Double]
plusMinus arr = [ pos, neg, zer ]
  where
    pos = fromIntegral (length $ filter (> 0)  arr) / fromIntegral (length arr)
    neg = fromIntegral (length $ filter (< 0)  arr) / fromIntegral (length arr)
    zer = fromIntegral (length $ filter (== 0) arr) / fromIntegral (length arr)

main :: IO ()
main = interact $ unlines . map show . plusMinus . map read . words . head . tail . lines
