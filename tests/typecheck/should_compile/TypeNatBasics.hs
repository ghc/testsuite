{-# LANGUAGE TypeOperators, DataKinds, PolyKinds #-}
{-# LANGUAGE FlexibleContexts #-}
module TypeNatBasics where

import GHC.TypeLits

data S n = S

-- Forward evaluation ----------------------------------------------------------

e1 :: S (2 + 8) -> S 10
e1 = id

e2 :: S (2 * 8) -> S 16
e2 = id

e3 :: S (2 ^ 8) -> S 256
e3 = id

e4 :: S (2 <=? 8) -> S True
e4 = id

e5 :: S (8 <=? 2) -> S False
e5 = id

e6 :: S (8 - 2) -> S 6
e6 = id


-- Identities ------------------------------------------------------------------

i1 :: S (x + 0) -> S x
i1 = id

i2 :: S (x * 0) -> S 0
i2 = id

i3 :: S (x * 1) -> S x
i3 = id

i4 :: S (x ^ 0) -> S 1
i4 = id

i5 :: S (x ^ 1) -> S x
i5 = id

i6 :: (1 <= x) => S (0 ^ x) -> S 0
i6 = id

i7 :: S (1 ^ x) -> S 1
i7 = id

i8 :: S (x - 0) -> S x
i8 = id

--------------------------------------------------------------------------------

c1 :: S (a + b) -> S (b + a)
c1 = id

c2 :: S (a * b) -> S (b * a)
c2 = id








