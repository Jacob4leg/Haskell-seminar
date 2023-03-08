-- +,-,*,/ - standardowe operacje
-- >, >=, <, <=, ==, /= - równości/nierówności
-- && (and), || (or), not – operacje logiczne 
-- `mod` - funkcja jako operacja

a = 2 + 3
b = 6 / 2
c = True && False
d = (False && True) || True
e = 6 `mod` 2

(%) :: Int -> Int -> Int -- przykład customowej operacji
(%) x y = x * x - y

