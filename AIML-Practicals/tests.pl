:- begin_tests(aiml_practicals).

% Each practical keeps its own graph/objective predicates, so loading all files
% together does not accidentally combine the different experiments.
:- consult('Unit-1/Exp-01-Student-Course-KB/student_course.pl').
:- consult('Unit-1/Exp-02-Recursion/recursion.pl').
:- consult('Unit-1/Exp-03-List-Operations/list_operations.pl').
:- consult('Unit-1/Exp-04-Timetable-Database/timetable.pl').
:- consult('Unit-1/Exp-05-Student-Classification/student_classification.pl').
:- consult('Unit-1/Exp-06-BFS/bfs.pl').
:- consult('Unit-2/Exp-07-Greedy-Best-First/greedy_best_first.pl').
:- consult('Unit-2/Exp-08-A-Star-Search/a_star.pl').
:- consult('Unit-2/Exp-09-Hill-Climbing/hill_climbing.pl').
:- consult('Unit-2/Exp-10-Simulated-Annealing/simulated_annealing.pl').
:- consult('Unit-2/Exp-11-Map-Coloring-CSP/map_coloring.pl').
:- consult('Unit-2/Exp-12-N-Queens-CSP/n_queens.pl').

test(student_fact) :- student(nitin).
test(student_course) :- enrolled(nirnay, ai).
test(arithmetic) :- add(10, 5, 15), subtract(10, 5, 5), multiply(4, 3, 12), divide(10, 2, 5).
test(factorial) :- factorial(5, 120).
test(fibonacci) :- fibonacci(6, 8).
test(list_append) :- append_lists([1,2], [3,4], [1,2,3,4]).
test(list_reverse) :- reverse_list([a,b,c], [c,b,a]).
test(list_member) :- member_search(b, [a,b,c]).
test(list_length) :- list_length([1,2,3,4], 4).
test(timetable) :- subject_classroom(ai, monday, room101).
test(student_classification) :- student_category(aarav, topper), student_category(kabir, fail).
test(bfs) :- bfs(a, g, Path), length(Path, 4), Path = [a,_,_,g].
test(greedy_best_first) :- greedy_best_first(a, g, Path), Path = [a,_,_,g].
test(a_star) :- a_star(a, g, Path, Cost), Path = [a,_,_,g], Cost =:= 7.
test(hill_climbing) :- hill_climb(0, 3, 9).
test(simulated_annealing) :-
    anneal(0, X, Value),
    integer(X), X >= -10, X =< 10, number(Value).

test(map_coloring) :-
    map_coloring(Solution),
    forall((member(A-CA, Solution), member(B-CB, Solution), neighbors(A, B)), CA \= CB).

test(n_queens) :-
    n_queens(4, Board),
    length(Board, 4),
    queens_board_valid(Board).

queens_board_valid(Board) :- queens_board_valid(Board, 1).
queens_board_valid([], _).
queens_board_valid([Column|Rest], Distance) :-
    \+ member(Other, Rest),
    queens_no_diagonal_conflict(Column, Rest, Distance),
    NextDistance is Distance + 1,
    queens_board_valid(Rest, NextDistance).

queens_no_diagonal_conflict(_, [], _).
queens_no_diagonal_conflict(Column, [Other|Rest], Distance) :-
    abs(Column - Other) =\= Distance,
    NextDistance is Distance + 1,
    queens_no_diagonal_conflict(Column, Rest, NextDistance).

:- end_tests(aiml_practicals).
