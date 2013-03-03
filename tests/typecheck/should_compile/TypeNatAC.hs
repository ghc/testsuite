{-# LANGUAGE TypeOperators, DataKinds, PolyKinds #-}

module TypeNatAC where
import GHC.TypeLits

data S n = S

-- Commutativity ---------------------------------------------------------------

c1 :: S a -> S b -> S (a + b) -> S (b + a)
c1 _ _ = id

c2 :: S a -> S b -> S (a * b) -> S (b * a)
c2 _ _ = id


-- Associativity ---------------------------------------------------------------

a1 :: S a -> S b -> S c -> S (a + (b + c)) -> S ((a + b) + c)
a1 _ _ _ = id

a2 :: S a -> S b -> S c -> S ((a + b) + c) -> S (a + (b + c))
a2 _ _ _ = id

-- Combinations ----------------------------------------------------------------

ac1 :: S a -> S b -> S c -> S ((a + b) + c) -> S (a + (c + b))
ac1 _ _ _ = id

ac2 :: S a -> S b -> S c -> S ((b + a) + c) -> S (a + (b + c))
ac2 _ _ _ = id

ac3 :: S a -> S b -> S c -> S (c + (a + b)) -> S (a + (b + c))
ac3 _ _ _ = id

ac4 :: S a -> S b -> S c -> S ((a + b) + c) -> S ((b + c) + a)
ac4 _ _ _ = id

ac5 :: S a -> S b -> S c -> S ((c + b) + a) -> S (a + (b + c))
ac5 _ _ _ = id

ac6 :: S a -> S b -> S c -> S ((a + b) + c) -> S (c + (b + a))
ac6 _ _ _ = id

