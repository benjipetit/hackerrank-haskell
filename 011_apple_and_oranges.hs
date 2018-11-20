{-
 
Sam's house has an apple tree and an orange tree that yield an abundance of
fruit. In the diagram below, the red region denotes his house, where `s` is the
start point, and `t` is the endpoint. The apple tree is to the left of his
house, and the orange tree is to its right. You can assume the trees are
located on a single point, where the apple tree is at point `a`, and the orange
tree is at point `b`.

Given the value of `d` for `m` apples and `n` oranges, determine how many
apples and oranges will fall on Sam's house (i.e., in the inclusive range `[s, t]`)?

#Input Format

The first line contains two space-separated integers denoting the respective values of `s` and `t`. 
The second line contains two space-separated integers denoting the respective values of `a` and `b`. 
The third line contains two space-separated integers denoting the respective values of `m` and `n`. 
The fourth line contains `m` space-separated integers denoting the respective distances that each apple falls from point `a`. 
The fifth line contains `n` space-separated integers denoting the respective distances that each orange falls from point `b`.

# Input sample

```
7 11
5 15
3 2
-2 2 1
5 -6
```

# Output sample

```
1
1
```

 -}
countApplesAndOranges :: [[Int]] -> [Int]
countApplesAndOranges [h, t, _, a, o] = [apples, oranges]
  where
    isInHouse x = (x >= h !! 0) && (x <= h !! 1)
    countInHouse = length . filter isInHouse
    apples =  countInHouse $ (+) <$> a <*> [ t !! 0 ]
    oranges = countInHouse $ (+) <$> o <*> [ t !! 1 ]

main :: IO()
main = interact $ unlines . map show . countApplesAndOranges . map (map read . words) . lines
