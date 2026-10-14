% Experiment 9: Hill Climbing
% Maximize f(X) = -(X-3)^2 + 9 over integer values.

hill_objective(X, Value) :-
    Value is -((X - 3) * (X - 3)) + 9.

best_neighbor(X, Next) :-
    XLeft is X - 1,
    XRight is X + 1,
    hill_objective(X, Current),
    hill_objective(XLeft, LeftValue),
    hill_objective(XRight, RightValue),
    ( LeftValue > Current, RightValue =< LeftValue -> Next = XLeft
    ; RightValue > Current, LeftValue =< RightValue -> Next = XRight
    ).

hill_climb(Start, BestX, BestValue) :-
    ( best_neighbor(Start, Next) ->
        hill_climb(Next, BestX, BestValue)
    ; BestX = Start,
      hill_objective(Start, BestValue)
    ).

% SWI-Prolog query: ?- hill_climb(0, X, Value).
