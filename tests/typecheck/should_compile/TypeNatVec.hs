{-# LANGUAGE DataKinds, KindSignatures, TypeOperators, GADTs #-}
module TypeNatVec where

import GHC.TypeLits

data Vec :: Nat -> * -> *
  where
  Nil  :: Vec 0 a
  Cons :: a -> Vec n a -> Vec (n + 1) a

instance Functor (Vec n) where
  fmap f Nil         = Nil
  fmap f (Cons x xs) = Cons (f x) (fmap f xs)

data Ix :: Nat -> *
  where
  Z :: Ix (n + 1)
  S :: Ix n -> Ix (n + 1)

lkp :: Vec n a -> Ix n -> a
lkp (Cons x _) Z      = x
lkp (Cons _ xs) (S x) = lkp xs x

revAppend :: Vec m a -> Vec n a -> Vec (m + n) a
revAppend Nil ys = ys
revAppend (Cons x xs) ys = revAppend xs (Cons x ys)

rev :: Vec n a -> Vec n a
rev xs = revAppend xs Nil

append :: Vec m a -> Vec n a -> Vec (m + n) a
append Nil ys = ys
append (Cons x xs) ys = Cons x (append xs ys)

instance Show a => Show (Vec n a) where
  show Nil         = "Nil"
  show (Cons x xs) = show x ++ "," ++ show xs

ex1 = Cons 1 $ Cons 2 Nil
ex2 = Cons 3 Nil
ex3 = append ex1 ex2
ex4 = revAppend ex1 ex2
ex5 = revAppend (Cons 1 (Cons 2 Nil)) (Cons 3 Nil)

