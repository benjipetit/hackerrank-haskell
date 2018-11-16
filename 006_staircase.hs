{-
 Write a program that prints a staircase of size `n`

# Input Sample
3

# Output Sample
```
  #
 ##
###
```

The staircase is right-aligned, composed of # symbols and spaces, and has a height and width of `n` = 3
 -}
staircase :: Int -> Int -> Char -> String
staircase 0 _ _ = ""
staircase i t c = line ++ "\n" ++ staircase (i - 1) t c
  where line = (take (i - 1) $ repeat ' ') ++ (take (t - i + 1) $ repeat c)

main :: IO ()
main = interact $ (\a -> staircase a a '#') . read 
