{-# LANGUAGE DataKinds #-}
--{-# LANGUAGE EmptyDataDecls #-}

module DataKind6 where

data kind Nat
data kind Sym

data kind Area = Array Nat Area
               | Struct Sym
               | Stored *
