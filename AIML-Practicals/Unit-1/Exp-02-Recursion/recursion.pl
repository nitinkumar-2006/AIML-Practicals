
% Experiment 2: Arithmetic Operations and Recursion

% Basic arithmetic operations
add(A, B, Result) :-
    Result is A + B.

subtract(A, B, Result) :-
    Result is A - B.

multiply(A, B, Result) :-
    Result is A * B.

divide(A, B, Result) :-
    B =\= 0,
    Result is A / B.

% Factorial using recursion
factorial(0, 1).

factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Previous),
    Result is N * Previous.

% Fibonacci series using recursion
fibonacci(0, 0).

fibonacci(1, 1).

fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, First),
    fibonacci(N2, Second),
    Result is First + Second.