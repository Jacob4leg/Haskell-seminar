-- [T] - lista elementów typu T
-- (T1, T2) - para elementów
-- (T1, T2, ..., Tn) - krotka n-elementowa

firstFive = [1,2,3,4,5]

listOfLists = [[], [1,2], [3,4,1], [5]]

listOfPairs = [(1,3), (1,5), (2,10)]

listOfTuples :: [(Int, String)]
listOfTuples = [(1,"ab"), (3,"ala"),(4,"ma"),(2,"kota")]

-- list comprehention
evens n = [i | i <- [1..n], i `mod` 2 == 0]
squares n = [i*i | i <- [1..n]]

-- (++) :: [T] -> [T] -> [T] - konkatenacja
-- [x1,x2,…,xn] ++ [y1,y2,…,yn] = [x1,…,xn,y1,…,yn]

l = [1,2,3] ++ [1,4,2] -- == [1,2,3,1,4,2]

-- (:) :: T -> [T] -> [T]
-- x : [y1,y2,…,yn] = [x,y1,…,yn]

-- map :: (a -> b) -> [a] -> [b]
-- map f [] = []
-- map f (x:xs) = f x : map f xs

-- filter :: (a -> Bool) -> [a] -> [a]
-- filter f [] = []
-- filter f (x:xs) = if f x then x : next else next 
-- 	where next = f xs

l1 = map (\x -> x * x) [1,3,4] -- == [1,9,16]

l2 = map (\x -> 1 : x) [[2,3,4],[1,5]] -- == [[1,2,3,4],[1,1,5]]

l3 = filter (\x -> x `mod` 2 == 0) [5,6,1,2,3,4] -- == [6,2,4]

l4 = filter (>5) [10,2,6,8,1,1] -- == [10,6,8]
