{-
Sam is a professor at the university and likes to round each student's
according to these rules:

If the difference between the `grade` and the next multiple of 5 is less than
3, round `grade` up to the next multiple of 5.  If the value of `grade` is less
than 38, no rounding occurs as the result will still be a failing grade

Given the initial value of `grade` for each of Sam's `n` students, write code
to automate the rounding process

### Input format 

The first line contains a single integer, `n`, the number of students.  Each
line `i` of the `n` subsequent lines contains a single integer, `grades[i]`,
denoting student `i`'s grade

### Input sample
```
4
73
67
38
33
```

### Output sample
```
75
67
40
33
```
 -}
grade :: Int -> Int
grade x | mod x 5 > 2 && x > 37 = x + ( 5 - mod x 5)
grade x = x

main = interact $ unlines . map ( show . grade . read ) . tail . lines 
