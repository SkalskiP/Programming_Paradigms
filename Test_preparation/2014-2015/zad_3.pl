% Napisać predykat, który pobiera dynamicznie od użytkownika imię żeńskie potem sprawdza 
% czy to imię jest w bazie. Jak nie ma to dodaje i potem wyświetla zawartość bazy. 
% Dopisać polecenie jakie trzeba dodać, żeby program działał dynamicznie.

:- dynamic kobieta/1.

%There has to be at least 1 name in the DB at the begining.
kobieta(anna).
kobieta(maria).

dodaj_imie(X) :-
    kobieta(X), !,
    write('This name is already in DB.'), nl.

dodaj_imie(X) :-
    Kobieta =.. [kobieta, X],
    assertz(Kobieta),
    write('New name has been added.'), nl.

nowe_imie() :-
    write('Type new name entirely in lower case, followed by period.'), nl,
    read(Name),
    nl,
    dodaj_imie(Name).