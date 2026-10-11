
% Experiment 6: Breadth-First Search

% Connections in the graph (undirected)
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, g).
edge(f, g).

% Treat each connection as bidirectional
connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

% BFS starts with the source in the queue
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, ReversedPath),
    reverse(ReversedPath, Path).

% If the first path in the queue reaches the goal, return it
bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

% Otherwise, extend the first path and continue
bfs_queue([ [Current|Rest] | OtherPaths], Goal, Path) :-
    findall(
        [Next, Current|Rest],
        (connected(Current, Next), \+ member(Next, [Current|Rest])),
        NewPaths
    ),
    append(OtherPaths, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).