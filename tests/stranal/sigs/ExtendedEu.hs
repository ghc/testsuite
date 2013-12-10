{-# LANGUAGE BangPatterns #-}

module ExtendedEu where

extendedEu :: Int -> Int -> (Int, Int)
extendedEu a 0 = (1, 0)
extendedEu a b = let b' = s - q * t
                 in b' `seq` (t, b')
    where (q, r) = quotRem a b
          (s, t) = extendedEu b r
