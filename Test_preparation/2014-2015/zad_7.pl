:- dynamic definicja/2.

definicja("matka", "kobieta, która ma dzieci").

dodaj_slowo(S) :-
    definicja(S,_), !,
    write('Dziękuję, ale to już znam.'), nl.

dodaj_slowo(S) :-
    write("A co to znaczy?"),
    read(D),
    nl,
    Definicja =.. [definicja, S, D],
    assertz(Definicja),
    write('Dzięki.'), nl.


poznaj_slowo() :-
    write("Podaj trudne słowo"),
    nl,
    read(Slowo),
    dodaj_slowo(Slowo).
    