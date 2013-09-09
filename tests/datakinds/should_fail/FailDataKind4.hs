{-# LANGUAGE DataKinds #-}

module FailDataKind4 where

-- this should fail, as kinds and types live in the same namespace
data kind K = T
data type K = C
