import java.util.Optional;

public class Monad {
    public static void main(String[] args) {
        Optional<Integer> maybeValue = Optional.of(10);
        // Verwendung von flatMap
        Optional<Integer> result = maybeValue.flatMap(x -> Optional.of(x * 2));
        System.out.println(result);
    }
}
