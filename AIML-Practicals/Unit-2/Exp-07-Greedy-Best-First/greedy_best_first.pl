% Experiment 7: Greedy Best-First Search
% Selects the frontier path whose final node has the lowest heuristic.

:- use_module(library(pairs)).

greedy_edge(a, b). greedy_edge(a, c).
greedy_edge(b, d). greedy_edge(b, e).
greedy_edge(c, f). greedy_edge(c, e).
greedy_edge(d, g). greedy_edge(e, g). greedy_edge(f, g).

greedy_heuristic(a, 7). greedy_heuristic(b, 4). greedy_heuristic(c, 5).
greedy_heuristic(d, 2). greedy_heuristic(e, 1). greedy_heuristic(f, 3). greedy_heuristic(g, 0).

greedy_connected(X, Y) :- greedy_edge(X, Y).
greedy_connected(X, Y) :- greedy_edge(Y, X).

greedy_best_first(Start, Goal, Path) :-
    greedy_heuristic(Start, H),
    greedy_queue([H-[Start]], Goal, [], RevPath),
    reverse(RevPath, Path).

greedy_queue([_- [Goal|Rest]|_], Goal, _, [Goal|Rest]).
greedy_queue([_- [Node|Rest]|Queue], Goal, Visited, Path) :-
    findall(H-[Next,Node|Rest],
        ( greedy_connected(Node, Next),
          \+ member(Next, [Node|Rest]),
          \+ member(Next, Visited),
          greedy_heuristic(Next, H)
        ), Children),
    append(Queue, Children, Frontier),
    keysort(Frontier, Ordered),
    greedy_queue(Ordered, Goal, [Node|Visited], Path).

% SWI-Prolog query: ?- greedy_best_first(a, g, Path).
