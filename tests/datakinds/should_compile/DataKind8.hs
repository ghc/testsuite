{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
module DataKinds8 where

data kind K a = T (K (Maybe a))

