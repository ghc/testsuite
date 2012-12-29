{-# LANGUAGE DataKinds, TypeOperators, PolyKinds, TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
module TypeNatNat1 where

import GHC.TypeLits


data P a = P


f1 :: (FromNat1 x ~ 0) => P x
f1 = P :: P Zero

f2 :: (FromNat1 x ~ FromNat1 y) => P x -> P y
f2 = id

f3 :: P (FromNat1 x) -> P x
f3 = undefined

type family Get (n :: Nat1) (xs :: [*]) :: *

type instance Get Zero (x ': xs) = x
type instance Get (Succ n) (x ': xs) = Get n xs

f4 :: P (FromNat1 n) -> P xs -> P (Get n xs)
f4 _ _ = P

f5 :: P Int
f5 = f4 (P :: P 0) (P :: P [Int,Char,Float])

f6 :: P Float
f6 = f4 (P :: P 2) (P :: P [Int,Char,Float])

class C n where
  g :: Sing (FromNat1 n)

instance C Zero where
  g = sing

instance C n => C (Succ n) where
  g = incSucc g

incSucc :: Sing a -> Sing (1 + a)
incSucc x = unsafeSingNat (fromSing x + 1)


