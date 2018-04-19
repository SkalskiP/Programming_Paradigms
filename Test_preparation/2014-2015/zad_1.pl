% Baza wiedzy

ksiazka(16, 'Flatlandia', autor('Edvin Abbot', 1838-1926),wydanie('Sell & Co',1884)).
ksiazka(28, 'R. U. R.', autor('Karel Capek', 1890-1938),wydanie('Palyers Press',2002)).
ksiazka(34, 'Kobieta z wydm', autor('Kobo Abe', 1924-1993),wydanie('Wydawnictwo Znak',2007)). 
ksiazka(36, 'Zamek', autor('Frans Kafka', 1883-1924),wydanie('Zielona Sowa',2001)).
ksiazka(37, 'Gargantua i Pantagruel', autor(' François Rabelais', 1494- 1553),wydanie('Siedmioróg',2004)).


% Należy napisać klauzule, które znajdują w bazie: 
% 1) książki wydane po śmierci swojego autora 
% 2) autorów, którzy mieli szansę się spotkać(żyli w tym samym czasie) 
% 3) listę wszystkich autorów żyjących(należy zastosować predykaty agregacyjne)

% Ad 1.

wydane_po_smierci() :-
    ksiazka(_, Tytul, autor(Autor, _-Smierc),wydanie(_,Wydanie)), 
    Smierc<Wydanie,
    write("Tytuł: "), write(Tytul), write(", autor: "), write(Autor), nl,
    fail.

% Ad 2.

autorzy_sie_spotkali() :-
    ksiazka(_, _, autor(A1, U1-S1),_),
    ksiazka(_, _, autor(A2, U2-S2),_),
    A1 \= A2,
    U1 < S2,
    S1 > U2,
    write(A1), write(" oraz "), write(A2), nl,
    fail.

% Ad 3.

wydawnicta() :-
    setof(X,wydawnictwoXIXw(X),L),
    write(L).

wydawnictwoXIXw(W) :-
    ksiazka(_, _, autor(_, Y-_),wydanie(W,_)),
    Y > 1800,
    Y < 1901.