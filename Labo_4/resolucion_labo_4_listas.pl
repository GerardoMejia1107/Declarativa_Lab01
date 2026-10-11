almacenar(Num, [Num]) :-
    Num < 10, !.
almacenar(Num, [Ultimo | Demas]) :-
    Num >= 10,
    Ultimo is Num mod 10,
    Restante is Num // 10,
    almacenar(Restante, Demas).
