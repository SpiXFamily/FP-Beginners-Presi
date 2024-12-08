// Functor in  Java
import java.util.Optional; // Importiert Optional-Klasse
public class Functor {
    public static void main(String[] args) {
        Optional<Integer> maybeValue = Optional.of(1); // Erstellt ein Optional-Objekt mit einem Wert von 1
        Optional<Integer> incrementedValue = maybeValue.map(x -> x + 1); /*
        map-Methode um den Wert im Optional um 1 zu erhöhen.
        Wenn maybeValue leer (empty) -> map einfach ein leeres Optional zurückgeben.
        */
       System.out.println(incrementedValue); // Ausgabe: Optional[2]
    }
}
