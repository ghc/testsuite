{-# LANGUAGE DataKinds #-}

module FailDataKind5 where

-- Int is not promotable
data kind Foo = Bar Int
