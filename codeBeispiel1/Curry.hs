-- Curry in Haskell
add :: Int -> Int -> Int
add x y = x + y
main :: IO ()
main = do
    let result = add 2 6
    putStrLn ("Ergebnis:" ++ show result)
