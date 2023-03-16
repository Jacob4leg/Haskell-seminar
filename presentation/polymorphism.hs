len :: [a] -> Int
len [] = 0
len (x:xs) = 1 + len xs

summ :: Num a => [a] -> a
summ [] = 0
summ (x:xs) = x + summ xs