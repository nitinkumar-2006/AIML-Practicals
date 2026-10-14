% Experiment 7: Greedy Best-First Search
% Selects the next node with the lowest heuristic value.

:- use_module(library(pairs)).

edge(a, b). edge(a, c).
edge(b, d). edge(b, e).
edge(c, f). edge(c, e).
edge(d, g). edge(e, g). edge(f, g).

heuristic(a, 7). heuristic(b, 4). heuristic(c, 5).
heuristic(d, 2). heuristic(e, 1). heuristic(f, 3). heuristic(g, 0).

connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

greedy_best_first(Start, Goal, Path) :-
    greedy_queue([[Start]], Goal, [], RevPath),
    reverse(RevPath, Path).

greedy_queue([[Goal|Rest]|_], Goal, _, [Goal|Rest]).
greedy_queue([[Node|Rest]|Queue], Goal, Visited, Path) :-
    findall(H-[Next,Node|Rest],
        ( connected(Node, Next),
          \+ member(Next, [Node|Rest]),
          \+ member(Next, Visited),
          heuristic(Next, H)
        ), Candidates),
    keysort(Candidates, Sorted),
    pairs_values(Sorted, NewPaths),
    append(Queue, NewPaths, Queue1),
    greedy_queue(Queue1, Goal, [Node|Visited], Path).

% SWI-Prolog query: ?- greedy_best_first(a, g, Path).
