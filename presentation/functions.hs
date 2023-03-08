-- f :: Int -> Int - funkcja przyjmuje liczbę całkowitą i zwraca całkowitą
-- g :: Int -> Double -> Int - funkcja przyjmuje liczbę całkowitą oraz double i zwraca int
-- h :: (Int -> Int) -> Int -> Int - funkcja przyjmuje funkcję oraz inta i zwraca inta

f :: Int -> Int
f x = 2 * x

g :: Double -> Double -> Double
g x y = x * x + y * y

h :: (Double, Double) -> Double
h (x,y) = x * x + y * y

fun :: Int -> (Int -> Int) -> Int
fun n f = n + f n