
module Main (main) where

import Control.Exception
import Prelude hiding (catch)
import System.Directory

main :: IO ()
main = do 
    cwd <- getCurrentDirectory
    fp <- canonicalizePath ""
    print (cwd == fp)
    
    -- Just make sure we don't fail with missing paths:
    canonicalizePath "no/such/file"
    canonicalizePath "/no/such/file"
    
    return ()
