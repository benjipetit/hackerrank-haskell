grade :: (Int, Int) -> [Int]  -> [Int]
grade (a, b) gs | a < b     = map (uncurry (+)) $ zip gs [0, 1]
grade (a, b) gs | a > b     = map (uncurry (+)) $ zip gs [1, 0]
grade (a, b) gs | otherwise = gs
comp ls = foldr grade [0, 0] $ zip alice bob
 where
  fls = take 2 $ lines ls
  alice = map read $ words $ head $ fls
  bob = map read $ words $ last $ fls

main = interact $ unwords . map show . comp
