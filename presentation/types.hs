type Point = (Double, Double)

type Graph = ([Int], Int -> Int -> Bool)

add :: Point -> Point -> Point
add (x1,y1) (x2,y2) = (x1+x2,y1+y2)

dist :: Point -> Point -> Double
dist (x1,y1) (x2,y2) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))


data Color = R | G | B

instance Show Color where 
  show R = "Red"
  show G = "Green"
  show B = "Blue"