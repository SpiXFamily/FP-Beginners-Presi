-- Curry
add :: Int -> Int -> Int
add x y = x + y
main :: IO ()
main = do
    let result = add 3 5
    putStrLn ("Curry Addition:" ++ show result)
