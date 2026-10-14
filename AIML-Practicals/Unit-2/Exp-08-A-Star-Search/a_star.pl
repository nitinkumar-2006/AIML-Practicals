% Experiment 8: A* Search
% f(N) = g(N) + h(N), where g is path cost and h is heuristic.

edge(a, b, 1). edge(a, c, 4).
edge(b, d, 2). edge(b, e, 5).
edge(c, e, 2). edge(c, f, 5).
edge(d, g, 4). edge(e, g, 2). edge(f, g, 2).

heuristic(a, 6). heuristic(b, 5). heuristic(c, 4).
heuristic(d, 4). heuristic(e, 2). heuristic(f, 2). heuristic(g, 0).

a_star(Start, Goal, Path, Cost) :-
    heuristic(Start, H0),
    astar_queue([node(Start, [Start], 0, H0)], Goal, RevPath, Cost),
    reverse(RevPath, Path).

astar_queue([node(Goal, Path, Cost, _)|_], Goal, Path, Cost).
astar_queue([node(Node, Path, G, _)|Queue], Goal, BestPath, BestCost) :-
    findall(F-node(Next, [Next|Path], G1, H),
        ( edge(Node, Next, Step),
          \+ member(Next, Path),
          G1 is G + Step,
          heuristic(Next, H),
          F is G1 + H
        ), Children),
    keysort(Children, Sorted),
    pairs_values(Sorted, Nodes),
    append(Queue, Nodes, Queue1),
    predsort(compare_nodes, Queue1, Ordered),
    astar_queue(Ordered, Goal, BestPath, BestCost).

compare_nodes(Order, node(_,_,G1,H1), node(_,_,G2,H2)) :-
    F1 is G1 + H1, F2 is G2 + H2,
    compare(Order, F1, F2).

% SWI-Prolog query: ?- a_star(a, g, Path, Cost).
