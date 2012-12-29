{-# LANGUAGE TypeOperators, DataKinds, PolyKinds #-}

module TypeNatAC where
import GHC.TypeLits

data S n = S

-- Commutativity ---------------------------------------------------------------

c1 :: S (a + b) -> S (b + a)
c1 = id

c2 :: S (a * b) -> S (b * a)
c2 = id


-- Associativity ---------------------------------------------------------------

a1 :: S (a + (b + c)) -> S ((a + b) + c)
a1 = id

a2 :: S ((a + b) + c) -> S (a + (b + c))
a2 = id

-- Combinations ----------------------------------------------------------------

ac1 :: S ((a + b) + c) -> S (a + (c + b))
ac1 = id

ac2 :: S ((b + a) + c) -> S (a + (b + c))
ac2 = id

ac3 :: S (c + (a + b)) -> S (a + (b + c))
ac3 = id

ac4 :: S ((a + b) + c) -> S ((b + c) + a)
ac4 = id

ac5 :: S ((c + b) + a) -> S (a + (b + c))
ac5 = id

ac6 :: S ((a + b) + c) -> S (c + (b + a))
ac6 = id

