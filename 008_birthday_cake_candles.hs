{-
You are in charge of the cake for your niece's birthday and have decided the
cake will have one candle for each year of her total age. When she blows out
the candles, she’ll only be able to blow out the tallest ones. Your task is to
find out how many candles she can successfully blow out.

# Sample input 
``` 
4 
3 2 1 3 
```

# Sample output 
``` 
2 
```

We have one candle of height 1, one candle of height 2, and two candles of
height 3. Your niece only blows out the tallest candles, meaning the candles
where `height = 3`. Because there are 2 such candles, we print `2` on a new
line.
 -}
birthdayCakeCandles :: [Int] -> Int
birthdayCakeCandles = fst . foldr acc (0, 0)
  where acc el (count, max) 
          | el > max  = (1, el)
          | el == max = (count + 1, max)
          | otherwise = (count, max)

main :: IO ()
main = interact $ show . birthdayCakeCandles . map read . words . last . lines

