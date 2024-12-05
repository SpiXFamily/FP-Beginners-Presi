import Control.Applicative
-- Beispiel mit Maybe
maybeA :: Maybe Int
maybeA = Just 3
maybeB :: Maybe Int
maybeB = Just 5
result :: Maybe Int
-- Anwendung von pure und Verknüpfung
result = pure (+) <*> maybeA <*> maybeB
main :: IO()
main = do
    print result
