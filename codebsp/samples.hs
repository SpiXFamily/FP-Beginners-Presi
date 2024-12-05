-- Curry
add :: Int -> Int -> Int
add x y = x + y
-- Anwendung
result = add 3 5  -- result ist 8

-- Java
import java.util.function.Function;

public class CurryingExample {
    public static Function<Integer, Function<Integer, Integer>> add =
        x -> y -> x + y;

    public static void main(String[] args) {
        int result = add.apply(3).apply(5);  // result ist 8
        System.out.println(result);
    }
}


---------------------------------
------ Functor
import Data.Functor
-- Beispiel mit Maybe
maybeValue :: Maybe Int
maybeValue = Just 5
-- fmap Anwendung
incrementedValue = fmap (+1) maybeValue  -- ergibt Just 6

-- Java
import java.util.Optional;

public class FunctorExample {
    public static void main(String[] args) {
        Optional<Integer> maybeValue = Optional.of(5);
        Optional<Integer> incrementedValue = maybeValue.map(x -> x + 1);  // ergibt Optional[6]
        System.out.println(incrementedValue);
    }
}


---------------
--- Applicative
import Control.Applicative
-- Beispiel mit Maybe
maybeA :: Maybe Int
maybeA = Just 3
maybeB :: Maybe Int
maybeB = Just 5
-- Anwendung von pure und Verknüpfung
result = pure (+) <*> maybeA <*> maybeB  -- ergibt Just 8

-- Java
import java.util.Optional;

public class ApplicativeExample {
    public static void main(String[] args) {
        Optional<Integer> maybeA = Optional.of(3);
        Optional<Integer> maybeB = Optional.of(5);

        // Anwendung von map und flatMap
        Optional<Integer> result = maybeA.flatMap(a ->
            maybeB.map(b -> a + b));  // ergibt Optional[8]
        System.out.println(result);
    }
}


---------

import Control.Monad

-- Beispiel mit Maybe
maybeValue :: Maybe Int
maybeValue = Just 10
-- Verwendung von bind (>>=)
result = maybeValue >>= \x -> Just (x * 2)  -- ergibt Just 20

-- Java
import java.util.Optional;

public class MonadExample {
    public static void main(String[] args) {
        Optional<Integer> maybeValue = Optional.of(10);

        // Verwendung von flatMap
        Optional<Integer> result = maybeValue.flatMap(x -> Optional.of(x * 2));  // ergibt Optional[20]
        System.out.println(result);
    }
}

