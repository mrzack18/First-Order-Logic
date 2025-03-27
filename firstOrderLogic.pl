ortu(david, liza).
ortu(amy, liza).
ortu(david, john).
ortu(amy, john).
ortu(jack, john).
ortu(karen, john).
ortu(jack, ray).
ortu(karen, ray).
ortu(john, peter).
ortu(susan, peter).
ortu(john, mary).
ortu(susan, mary).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).
perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

saudara(X, Y) :- ortu(Z, X), ortu(Z, Y), X \= Y.
ayah(X, Y) :- ortu(X, Y), laki_laki(X).
ibu(X, Y) :- ortu(X, Y), perempuan(X).
kakek_nenek(X, Y) :- ortu(X, Z), ortu(Z, Y).
kakek(X, Y) :- kakek_nenek(X, Y), laki_laki(X).
nenek(X, Y) :- kakek_nenek(X, Y), perempuan(X).
paman(X, Y) :- ortu(Z, Y), saudara(X, Z), laki_laki(X).
bibi(X, Y) :- ortu(Z, Y), saudara(X, Z), perempuan(X).