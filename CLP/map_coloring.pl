:- lib(ic).

map_coloring(Surfaces) :-
	Surfaces = [A,B,C,D,E],
	Surfaces :: [0..3],
	A #\= B,
	A #\= C,
	A #\= D,
	A #\= E,
	B #\= C,
	C #\= D,
	D #\= E, 
	labeling(Surfaces).