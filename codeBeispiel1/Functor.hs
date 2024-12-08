-- Functor
import Data.Functor
-- Beispiel mit Maybe
maybeWert :: Maybe Int
maybeWert = Just 5
incrementedWert :: Maybe Int
incrementedWert = fmap (+1) maybeWert
main :: IO ()
main = do
    let result = incrementedWert
    putStrLn (show result)
