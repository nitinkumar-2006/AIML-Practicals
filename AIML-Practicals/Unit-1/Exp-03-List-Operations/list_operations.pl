
% Experiment 3: List Operations in Prolog

% Append two lists
append_lists(List1, List2, Result) :-
    append(List1, List2, Result).

% Reverse a list
reverse_list(List, Reversed) :-
    reverse(List, Reversed).

% Check whether an element is present
member_search(Element, List) :-
    member(Element, List).

% Find the length of a list
list_length(List, Length) :-
    length(List, Length).