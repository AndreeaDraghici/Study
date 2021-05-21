ancestor(A,B):-parent(A,B).
ancestor(A,B):-parent(A,X), parent(X,B).
ancestor(A,B):-parent(A,X), parent(X,Y), parent(Y,B).
ancestor(A,B):-parent(A,X), parent(X,Y), parent(Y,Z), parent(Z,B).

ancestor(A,B):-parent(A,B).
ancestor(A,B):-parent(A,X), parent(X,B).

factorial(0,1).
factorial(N,F) :- N > 0, N1 is N-1, factorial(N1, F1), F is N * F1.

parse ([]).
parse ([H|T]):- write(H), parse(T).

is_list([]).
is_list([_|T]):-is_list(T).

append1([],L,L).
append1([H|T],L2,[H,L3]):-append1(T,L2,L3).

naive_rev([],[]).
naive_rev([H|T],R):- naive_rev(T,S), append(S, [H], R).

rev(L,R):-rev(L,[],R).
rev([], R, R).
rev([H|T], C, R):- rev(T, [H|C], R).

list_lenghtl([],0).
list_lenghtl([_|Tail],Lenght):-list_lengthl(Tail, TailLength), Length is TailLength + 1.

list_length2(List,Length) :- list_length2(List,0,Length).
list_length2([],Length,Length).
list_length2([_|Tail],Accumulator,Length):-NewAcc is Accumulator +1, list_length2(Tail,NewAcc,Length).

addup([],0).
addup([FirstNumber | RestOfList],Total):-addup(RestOfList, TotalOfRest), Total is FirstNumber + TotalOfRest.

taller_than(bob, mike).
taller_than(mike, jim).
taller_than(jim, george).

    taller_than_rule(X, Y) :-taller_than(X, Y).
    taller_than_rule(X, Y) :-taller_than(X, Z), taller_than_rule(Z, Y).

pozi([X|_], 1, X).
pozi([_A|R], I, X) :- I1 is I - 1, pozi(R, I1, X).

prefix([], _L).
prefix([X|R1], [X|R2]) :- prefix(R1, R2).

sufix(L, L).
sufix(L, [_Y|Rest]) :- sufix(L, Rest).

addup([], []).
addup([H|T], [H1|T1]) :- H1 is H+1, addUp(T,T1).