data Nat = Zero | Succ Nat deriving Eq

zero = Zero
one = Succ Zero
two = Succ (Succ Zero)

natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ nat) = 1 + natToInt nat

intToNat :: Int -> Nat
intToNat 0 = Zero
intToNat n = Succ (intToNat (n-1))

instance Show Nat where
  show nat = intShow (natToInt nat)


intShow :: Int -> String
intShow n = show n

instance Ord Nat where
  (<=) Zero nat = True
  (<=) nat Zero = False
  (<=) (Succ nat1) (Succ nat2) = nat1 <= nat2