module Fakul where
fakul :: Integer -> Integer
fakul 0 = 1  -- Basisfall: Fakultät von 0 ist 1
fakul n = n * fakul (n - 1)  -- Rekursiver Fall

main :: IO ()
main = do
    --let num = 5
    putStrLn "int eingeben:"
    input <- getLine
    let num = read input :: Integer
    putStrLn $ "Fakultät von " ++ show num ++ " ist " ++ show (fakul num)
