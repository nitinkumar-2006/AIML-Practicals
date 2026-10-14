% Experiment 11: Map Coloring using CSP and Backtracking

region(wa). region(nt). region(sa). region(q). region(nsw). region(v). region(t).
color(red). color(green). color(blue).

adjacent(wa, nt). adjacent(wa, sa).
adjacent(nt, sa). adjacent(nt, q).
adjacent(sa, q). adjacent(sa, nsw). adjacent(sa, v).
adjacent(q, nsw). adjacent(nsw, v).

neighbors(X, Y) :- adjacent(X, Y).
neighbors(X, Y) :- adjacent(Y, X).

valid_color(Region, Color, Assignments) :-
    \+ (member(Other-OtherColor, Assignments),
         neighbors(Region, Other),
         OtherColor = Color).

color_regions([], Assignments, Assignments).
color_regions([Region|Rest], Current, Solution) :-
    color(Color),
    valid_color(Region, Color, Current),
    color_regions(Rest, [Region-Color|Current], Solution).

map_coloring(Solution) :-
    color_regions([wa, nt, sa, q, nsw, v, t], [], Solution).

% SWI-Prolog query: ?- map_coloring(Solution).
