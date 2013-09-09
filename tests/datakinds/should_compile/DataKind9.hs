{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}

module DataKind9 where

data kind Universe = Sum  Universe Universe
                   | Prod Universe Universe
                   | K *

data type Interpretation :: Universe -> * where
  L    :: Interpretation a -> Interpretation (Sum a b)
  R    :: Interpretation b -> Interpretation (Sum a b)
  Prod :: Interpretation a -> Interpretation b -> Interpretation (Prod a b)
  K    :: a -> Interpretation (K a)
