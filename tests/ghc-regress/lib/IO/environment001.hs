import System.Environment

main = do
    var0 <- getEnv "GHC_TEST"
    putStrLn var0
    
    [arg0] <- getArgs
    putStrLn arg0
    
    [arg1] <- withArgs ["你好!"] getArgs
    putStrLn arg1
