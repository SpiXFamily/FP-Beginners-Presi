import java.util.function.Function;

public class Curry {
    public static Function<Integer, Function<Integer, Integer>> add =
        x -> y -> x + y;

    public static void main(String[] args) {
        int result = add.apply(3).apply(5);
        System.out.println("Curry Addition Java:" + result);
    }
}
