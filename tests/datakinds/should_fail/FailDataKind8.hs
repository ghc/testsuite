{-# LANGUAGE DataKinds #-}
module FailDataKind8 where

data type Nat = Ze | Su Nat

data kind Test = Foo Nat
