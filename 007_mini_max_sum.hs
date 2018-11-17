{-
Given five positive integers, find the minimum and maximum values that can be
calculated by summing exactly four of the five integers. Then print the
respective minimum and maximum values as a single line of two space-separated
long integers

# Input sample ``` 1 2 3 4 5 ```

# Output sample ``` 10 14 ```
 -}
miniMaxSum :: [Int] -> (Int, Int)
miniMaxSum [] = (0, 0)
miniMaxSum (x:xs) = mms xs (x, x) (0, 0)

mms :: [Int] -> (Int, Int) -> (Int, Int) -> (Int, Int)
mms [] _ r = r
mms (x:xs) (lmin, lmax) (smin, smax) = mms xs (nmin, nmax) (nsmin, nsmax)
  where
    nmin = min lmin x
    nmax = max lmax x
    nsmin = smin + lmax - nmax + x
    nsmax = smax + lmin - nmin + x

main :: IO ()
main = interact $ unwords . map show . (\ (a, b) -> [a, b]) . miniMaxSum . map read . words

