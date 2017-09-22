// Vertrag zum Abspeichern eines Integerwertes mit Setter und Getter
// Nur der Besitzer des Vertrags darf Änderungen an dem Wert vornehmen.

// Festlegen der Compilerversion.
pragma solidity ^0.4.16;

// Einfacher Vertrag
contract SimpleContract2 {
    // Variablen Deklarierung
    // Datenspeicher
    uint data;
    // Addresse des Vertragsbesiters
    address public owner;
    
    // Konstruktor
    function SimpleContract2() {
        // msg.sender ist die Addresse des Vertragsbesitzer
        owner = msg.sender;
    }
    // Setter
    function set(uint x) {
        // Falls der Aufrufer der Funktion nicht der Vertragsbesiter ist mache nichts.
        if (msg.sender != owner) return;
        data = x;
    }
    // Getter
    function get() constant returns (uint rVal) {
        return data;
    }
}
