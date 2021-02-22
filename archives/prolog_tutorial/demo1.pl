eecs(eecs280).
eecs(eecs281).
eecs(eecs245).
eecs(eecs292).
math(math214).

prerequisite(eecs280, eecs281).
prerequisite(eecs203, eecs281).
prerequisite(eecs281, eecs492).
prerequisite(eecs281, eecs445).
prerequisite(math214, eecs445).

teach(martin, eecs492).
teach(martin, eecs280).
taken(martin, eecs445).

taken(X, Y) :- teach(X, Y).
% taken(X, Y) :- taken(X, Z), prerequisite(Y, Z).
know(X, Y) :- taken(X, Z), prerequisite(Y, Z).
know(X, Y) :- taken(X, Y).