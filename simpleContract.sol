// Vertrag zum Abspeichern eines Integerwertes mit Setter und Getter

// Festlegen der Compilerversion.
pragma solidity ^0.4.16;

// Einfacher Vertrag
contract SimpleContract {
    // Variablen Deklarierung
    int data;
    // Setter
    function set(int x) {
        data = x;
    }
    // Getter
    function get() constant returns (int rVal) {
        return data;
    }
}
