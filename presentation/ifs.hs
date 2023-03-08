f :: Int -> Int -> Int
f x y = if x + y < 0 then 0 else x + y

fact :: Int -> Int
fact n = if n == 0  then 1 else n * fact (n-1)

-- guards
sign :: Int -> Int
sign x
    | x == 0    = 0
    | x > 0     = 1
    | otherwise = -1


-- pattern matching
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * fact (n-1)

len :: [Int] -> Int
len [] = 0
len (x:xs) = 1 + len xs