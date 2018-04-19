:- dynamic slowo/1.

slowo(penis).

dodajslowo(X) :-
    slowo(X), !,
    write('Takie slowo juz istnieje w bazie wiedzy'), nl.

dodajslowo(X) :-
    Slowo =.. [slowo, X],
    assertz(Slowo),
    write('dodano slowo'), nl.

poznajslowo :-
    write('Proszę podać trudne słowo:'), nl,
    read(Slowo),
    dodajslowo(Slowo). 