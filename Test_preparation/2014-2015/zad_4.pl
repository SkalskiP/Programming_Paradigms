marge([], As, As).
marge(Bs, [], Bs).

marge([A|As], [B|Bs], R) :- A =< B, marge(As, [B|Bs], M), R = [A|M].
marge([A|As], [B|Bs], R) :- A > B, marge(Bs, [A|As], M), R = [B|M].