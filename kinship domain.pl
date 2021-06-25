parent('manjur','sohel'). parent('manjur','tufel').
parent('manjur','jerin'). parent('manjur','najnin').
parent('tufel','rifat').

male('manjur'). male('sohel').
male('tufel').  male('rifat').

female('jerin'). female('najnin').




grandchildren(X, Z) :- parent(Y, X), parent(Z, Y).
findGc :- write(' grandparent: '), read(X), write('grandchildren: '),
	grandchildren(Gc, X), write(Gc), tab(5), fail.
findGc.


grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
findGp :- write(' grandchildren: '), read(X), write('grandparent: '),
	grandparent(Gp, X), write(Gp), tab(5), fail.
findGp.


brother(X,Y):-parent(Z,X), parent(Z,Y), male(X), not(X=Y).
findBr :- write(' Sibling: '), read(X), write('brother: '),
	brother(Br, X), write(Br), tab(5), fail.
findBr.

sister(X,Y):-parent(Z,X), parent(Z,Y),female(X), not(X=Y).
findSr :- write(' sibling: '), read(X), write('sister: '),
	sister(Sr, X), write(Sr), tab(5), fail.
findSr.

uncle(X,Y):-parent(Z,Y), brother(X,Z).
findUl :- write(' nibling: '), read(X), write('uncle: '),
	uncle(Ul,X), write(Ul), tab(5), fail.
findUl.

aunt(X,Y):-parent(Z,Y), sister(X,Z).
findUt :- write(' nibling: '), read(X), write('aunt: '),
	uncle(Ut,X), write(Ut), tab(5), fail.
findUt.















