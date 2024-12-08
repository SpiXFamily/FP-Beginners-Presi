import java.util.Optional;

public class Applicative{
    public static void main(String[] args) {
        Optional<Integer> maybeA = Optional.of(3);
        Optional<Integer> maybeB = Optional.of(5);
        // Anwendung von map und flatMap
        Optional<Integer> result = maybeA.flatMap(a ->
            maybeB.map(b -> a + b));
        System.out.println(result);
    }
}
