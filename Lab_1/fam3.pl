kobieta(masha).
mezczyzna(kirill).
mezczyzna(piotr).
brat(kirill, masha).
chlopak(piotr, masha).

szwagier(X) :- mezczyzna(X), mezczyzna(Y), kobieta(Z), brat(X, Z), chlopak(Y, Z). 
