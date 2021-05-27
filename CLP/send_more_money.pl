% loading interval constraints variable
:- lib(ic).

send_more_money(Digits) :-
	
	% variable declaration (here we have two lists of variables one for the digits and the other one for the carries)
    Digits = [S,E,N,D,M,O,R,Y],
    Carries = [C1,C2,C3,C4],

    % domains
    Digits :: [0..9],
    Carries :: [0..1],

    % constraints
    % you can find more information about the constraints in the IC library here
    % http://eclipseclp.org/doc/tutorial/tutorial057.html
    alldifferent(Digits), % global constraint that guarantees that all digits have different values

    % variables S and M cannot be 0 because numbers cannot start with 0
    S #\= 0,
    M #\= 0,
    C1         #= M,
    C2 + S + M #= O + 10*C1,
    C3 + E + O #= N + 10*C2,
    C4 + N + R #= E + 10*C3,
         D + E #= Y + 10*C4,

    % Instantiate a collection of integer IC variables to elements of their domain
    labeling(Carries),
    labeling(Digits).
