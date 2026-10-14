% Experiment 8: A* Search
% f(N) = g(N) + h(N), where g is path cost and h is heuristic.

:- use_module(library(pairs)).

astar_edge(a, b, 1). astar_edge(a, c, 4).
astar_edge(b, d, 2). astar_edge(b, e, 5).
astar_edge(c, e, 2). astar_edge(c, f, 5).
astar_edge(d, g, 4). astar_edge(e, g, 2). astar_edge(f, g, 2).

astar_heuristic(a, 6). astar_heuristic(b, 5). astar_heuristic(c, 4).
astar_heuristic(d, 4). astar_heuristic(e, 2). astar_heuristic(f, 2). astar_heuristic(g, 0).

a_star(Start, Goal, Path, Cost) :-
    astar_heuristic(Start, H0),
    astar_queue([H0-node(Start, [Start], 0, H0)], Goal, RevPath, Cost),
    reverse(RevPath, Path).

astar_queue([_-node(Goal, Path, Cost, _)|_], Goal, Path, Cost).
astar_queue([_-node(Node, Path, G, _)|Queue], Goal, BestPath, BestCost) :-
    findall(F-node(Next, [Next|Path], G1, H),
        ( astar_edge(Node, Next, Step),
          \+ member(Next, Path),
          G1 is G + Step,
          astar_heuristic(Next, H),
          F is G1 + H
        ), Children),
    append(Queue, Children, Frontier),
    keysort(Frontier, Ordered),
    astar_queue(Ordered, Goal, BestPath, BestCost).

% SWI-Prolog query: ?- a_star(a, g, Path, Cost).
