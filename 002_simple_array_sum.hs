{-|
 Given an array of integers, find the sum of its elements.

 # Input Format

 The first line contains an integer, `n`, denoting the size of the array. 
 The second line contains `n` space-separated integers representing the array's elements.
 
 Sample Input

 6
 1 2 3 4 10 11

 Sample Output

 31
-}
main = interact $ show . sum . map read . words . head . tail . lines
