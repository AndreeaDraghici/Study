likes(andrei, mihai).
likes(mihai, andrei).
friends(X,Y) :- likes(X,Y), likes(Y,X).


mortal(X):- human(X).
human(socrates).

killer(butch).

married(mia,marsellus).

dead(zed).

kills(marcellus,x):-giveFootMassage(x,mia).

love(mia,x):-dansator(x).

eat(Jules,X):-nutritious(X);tasty(X).

male(andrei).
male(cristi).
male(ovidiu).
male(marius).
male(george).


female(adriana).
female(ana).
female(elena).

parent(andrei,cristi).
parent(andrei,elena).
parent(cristi,adriana).
parent(cristi,marius).
parent(cristi,ovidiu).
parent(elena,ana).
parent(ana,george).

tata(X,Y):-parent(X,Y),male(X).

bunic(X,Y):-parent(X,Z),parent(Z,Y),male(X).

sora(X,Y):-parent(Z,X),parent(Z,Y),female(X).
frate(X,Y):-parent(Z,X),parent(Z,Y),male(X).