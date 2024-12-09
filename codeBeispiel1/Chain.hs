-- Beispiel für Verkettung von Monaden
chainExample :: Maybe Int
chainExample = Just 3 >>= \x ->  -- Beginne mit "Just 3""
               Just (x * 2) >>= \y ->  -- Mult. x (3) mit 2, was "Just 6"" ergibt
               Just (y + 1)  -- Addiere 1 zu y (6), was zu `Just 7` führt.
main :: IO ()
main = do
    -- Ausgabe des Ergebnisses
    case chainExample of
        Just result -> putStrLn $ "Das Ergebnis ist: " ++ show result  -- Wenn es ein Ergebnis gibt, wird es ausgegeben
        Nothing     -> putStrLn "Es gibt kein Ergebnis."  -- Wenn es kein Ergebnis gibt
