happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

dances(alice) :-
    happy(alice),
    with_albert(alice).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% parent(X, bob), dances(X).
% Who is the parent of Bob, who also dances?

% parent(Y, carl), parent(X, Y).
% Who is Carl, grandparent?

% parent(albert, X), parent(X, Y).
% Who is albert grand child?

get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Alberts grandchild is '),
    write(Y), nl.

% parent(X, carl), parent(X, charlie).
% Who is the parent of carl and charlie?

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

grand_parent(X, Y) :-
    parent(Z, X),
    parent(Y, Z).

blushes(X) :- human(X).
human(derek).

stabs(tybalt, marcutio, sword).
hates(romeo, X) :- stabs(X, marcutio, sword).