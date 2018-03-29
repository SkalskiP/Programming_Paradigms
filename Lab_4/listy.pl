porownaj([_,_,P,P|_]).

nalezy(X,[X|_]).
nalezy(X,[_|Yogon]) :-
	nalezy(X,Yogon).

dlugosc([],0).
dlugosc([_|Ogon],Dlug) :-
	dlugosc(Ogon,X),
	Dlug is X+1.

a2b([],[]).
a2b([a|Ta],[b|Tb]) :- 
   a2b(Ta,Tb).

sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
	sklej(L1,L2,L3).

odwroc([],[]).
odwroc([H|T],L) :-
	odwroc(T,R),
	sklej(R,[H],L).

ostatni(E, L):-
	sklej(_, [E], L).

u3p(L, L1):-
	sklej([_,_,_], L1, L).

u3o(L, L1):-
	sklej(L1, [_,_,_], L).

u3po(L, L1) :-
	sklej([_,_,_|L1], [_,_,_], L).

% ?- u3p([1,2,3,4,5,6,7], X).
% X = [4, 5, 6, 7].

% ?- u3po([1,2,3,4,5,6,7], X).
% X = [4] 

parzysta([]).
parzysta([_|L]) :-
	nieparzysta(L).

nieparzysta([_|L]):-
	parzysta(L).

% ?- parzysta([1,2,3,4,5,6]).
% true.

% ?- nieparzysta([1,2]).
% false.

palindrom(L):-
	odwroc(L,L).

% ?- palindrom([1,2,3,2,1]).
% true.

% ?- palindrom([1,2,3,1]).
% false.

przesun(L,L1):-
	sklej(L, [X], [X|L1]).

% ?- przesun([1,2,3,4,5], X).
% X = [2, 3, 4, 5, 1].

palindrom2([X, L]) :-
	sklej(Y, [X], L),
	palindrom2(Y).

przeloz([],[]):-
przeloz([A|L], [X, Y]):-
	znaczy(A, X),
	przeloz(L, Y).