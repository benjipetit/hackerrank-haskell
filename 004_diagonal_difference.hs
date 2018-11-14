{--
Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# input format
The first line contains a single integer, `n`, the number of rows and columns in the matrix `arr`.
Each of the next `n` lines describes a row, `arr[i]`, and consists of `n` space-separated integers `arr[i][j]`.

# Sample input

```
3
11 2 4
4 5 6
10 8 -12
```

# Sample output
15
 -}
diagonalSum :: Int -> [[Int]] -> Int
diagonalSum _ [] = 0
diagonalSum n (x:xs) = (x !! n) - (x !! ( length x - n - 1)) + diagonalSum (n + 1) xs

readLine :: String -> [Int]
readLine s = map read $ words s

readGrid :: String -> [[Int]]
readGrid ls = map readLine $ tail . lines $ ls

main :: IO ()
main = interact $ show . abs . diagonalSum 0 . readGrid
