rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
 
ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).

siostra(X, Y) :-
    rodzic(Z, X),
    rodzic(Z, Y),
    kobieta(Y),
    X \= Y.

brat(X, Y) :-
    rodzic(Z, X),
    rodzic(Z, Y),
    mezczyzna(Y),
    X \= Y.

dziadek(X, Y) :-
    rodzic(X, Z),
    rodzic(Z, Y),
    mezczyzna(X).

babcia(X, Y) :-
    rodzic(X, Z),
    rodzic(Z, Y),
    kobieta(X).

przodek(X,Y) :-
	rodzic(X,Y).
 
przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).