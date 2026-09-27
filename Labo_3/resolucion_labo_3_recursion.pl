
suma(1, 1) :- !.
suma(N, Total) :-
    N > 1,
    Anterior is N - 1,
    suma(Anterior, TotalAnterior),
    Total is N + TotalAnterior.
