% Experiment 12: N-Queens using CSP and Backtracking
% A list position is a row; its value is the queen's column.

n_queens(N, Board) :-
    integer(N), N > 0,
    numlist(1, N, Columns),
    place_queens(N, Columns, [], Board).

place_queens(0, _, Board, Board).
place_queens(N, Columns, Partial, Board) :-
    N > 0,
    member(Column, Columns),
    safe_column(Column, Partial, 1),
    N1 is N - 1,
    place_queens(N1, Columns, [Column|Partial], Board).

safe_column(_, [], _).
safe_column(Column, [Previous|Rest], Distance) :-
    Column =\= Previous,
    abs(Column - Previous) =\= Distance,
    NextDistance is Distance + 1,
    safe_column(Column, Rest, NextDistance).

% SWI-Prolog query: ?- n_queens(4, Board).
% Board is listed from the last placed row back to the first.
