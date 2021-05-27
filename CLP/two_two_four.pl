:- lib(ic).

twotwofour(Digits) :-
    Digits = [T,W,O,F,U,R],
    Carries = [C1,C2,C3],
    Digits :: [0..9],
    Carries :: [0..1],
    alldifferent(Digits), 
    T #\= 0,
    F #\= 0,
    C3         #= F,
    C2 + 2 * T #= O + 10*C3,
    C1 + 2 * W #= U + 10*C2,
         2 * O #= R + 10*C1,
    labeling(Carries),
    labeling(Digits).