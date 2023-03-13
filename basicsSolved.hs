-- 1. Napisz funkcję liczącą n-ty wyraz ciągu fibbonaciego. Czy to rozwiązanie jest efektywne?
--    Jeśli nie to jaki masz pomysł na poprawę?

f :: Int -> (Int, Int) -> Int
f 0 (a,b) = a
f n (a,b) = f (n-1) (b,a+b)

fib :: Int -> Int
fib n = f n (1,1)

-- 2. Napisz funkcję sprawdzającą czy dana liczba jest pierwsza

primeCheck :: Int -> Int -> Bool
primeCheck 1 _ = False
primeCheck n 1 = True
primeCheck n k = if n `mod` k == 0 then False else primeCheck n (k - 1)

prime :: Int -> Bool
prime n = primeCheck n (n `div` 2)

-- 3. Korzystając z poprzedniego zadania napisz funkcję zwracającą listę
--    liczb pierwszych należących do {1,2,...,n}

primes :: Int -> [Int]
primes n = [i | i <- [1 .. n], prime i]

-- 4. Napisz funkcję zwracającą trójki pitagorejskie, gdzie każdy element jest mniejszy lub równy od n

trojki :: Int -> [(Int, Int, Int)]
trojki n = [(a,b,c) | a <-[1..n], b <-[(a+1)..n], c<-[(b+1)..n], a*a + b*b == c*c]

-- 5. Napisz funkcję sprawdzającą czy dana liczba jest doskonała.
--    Liczba doskonała to taka, która jest sumą swoich dzielników, mniejszych od niej samej,
--    np. 6 = 3+2+1, 28=14+7+4+2+1.