-- !!! Check that type signatures and pragmas that 
-- !!! don't have a "parent" are correctly reported

module ShouldFail where

-- Top level test
f :: Int -> Int
{-# INLINE f #-}

-- Nested test
h :: Int -> Int	-- This one is ok
h x = x
    where
      g :: Int -> Int	-- Bogus

-- Superclass method pragma test
class Foo a where
    bar :: a -> a
    {-# INLINE bar #-}

-- Instance test
instance Foo Int where
    bar = (+1)
    {-# INLINE not_bar #-}

