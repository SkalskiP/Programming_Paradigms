dynamic(kobieceImie/1).

%There has to be at least 1 name in the DB at the begining.
kobieceImie(anna).

dodajImie(I):-
  kobieceImie(I),
  !,
  print('To imie juz istnieje w bazie.').

dodajImie(I):-
  Term =.. [kobieceImie, I],
  assertz(Term).
