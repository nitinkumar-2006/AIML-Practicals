% Experiment 6: Breadth-First Search (BFS)
% Finds a shortest path in an unweighted graph.

bfs_edge(a, b).
bfs_edge(a, c).
bfs_edge(b, d).
bfs_edge(b, e).
bfs_edge(c, f).
bfs_edge(d, g).
bfs_edge(e, g).
bfs_edge(f, g).

bfs_connected(X, Y) :- bfs_edge(X, Y).
bfs_connected(X, Y) :- bfs_edge(Y, X).

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, ReversedPath),
    reverse(ReversedPath, Path).

bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).
bfs_queue([[Current|Rest]|Queue], Goal, Path) :-
    findall([Next,Current|Rest],
            (bfs_connected(Current, Next), \+ member(Next, [Current|Rest])),
            NewPaths),
    append(Queue, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).

% Example query:
% ?- bfs(a, g, Path).
% Expected shortest path: [a,b,d,g] or [a,b,e,g] or [a,c,f,g].
