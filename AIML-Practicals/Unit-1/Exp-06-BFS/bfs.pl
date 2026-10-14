% Experiment 6: Breadth-First Search (BFS)
% Finds a shortest path in an unweighted graph.

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, g).
edge(f, g).

connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, ReversedPath),
    reverse(ReversedPath, Path).

bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).
bfs_queue([[Current|Rest]|Queue], Goal, Path) :-
    findall([Next,Current|Rest],
            (connected(Current, Next), \+ member(Next, [Current|Rest])),
            NewPaths),
    append(Queue, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).

% Example query:
% ?- bfs(a, g, Path).
% Expected shortest path: [a,b,d,g] or [a,b,e,g] or [a,c,f,g].
