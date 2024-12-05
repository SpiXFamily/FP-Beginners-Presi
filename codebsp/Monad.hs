import Control.Monad
-- Beispiel mit Maybe
maybeValue :: Maybe Int
maybeValue = Just 10
-- Verwendung von bind ">>="
ergebnis = maybeValue >>= \x -> Just (x * 2)

main :: IO ()
main = do
    print ergebnis
