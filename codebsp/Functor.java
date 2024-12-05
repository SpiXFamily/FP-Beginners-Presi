import java.util.Optional;

public class Functor{
    public static void main(String[] args) {
        Optional<Integer> maybeValue = Optional.of(1);
        Optional<Integer> incrementedValue = maybeValue.map(x -> x + 1);
        System.out.println(incrementedValue);
    }
}
