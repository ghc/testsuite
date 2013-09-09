{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE KindSignatures #-}
module FailDataKind7 where

-- unholy recursion
data kind K = T Foo
data Foo (a :: K) = Bar
