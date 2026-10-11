# Experiment 3: List Operations in Prolog

## Aim

To perform append, reverse, member search, and list length operations using lists in Prolog.

## Theory

Lists are used in Prolog to store multiple elements in a single structure. A list is written inside square brackets, with elements separated by commas.

Prolog provides built-in predicates to work with lists. In this experiment, `append/3` joins two lists, `reverse/2` reverses a list, `member/2` checks whether an element belongs to a list, and `length/2` finds the number of elements.

## Algorithm

1. Start the program.
2. Define a predicate to append two lists.
3. Define a predicate to reverse a list.
4. Define a predicate to search for an element in a list.
5. Define a predicate to find the length of a list.
6. Execute queries and observe the results.

## Program

The source code is available in [`list_operations.pl`](./list_operations.pl).

## Sample Queries and Output

**1. Append two lists**

Query:
```prolog
?- append_lists([1, 2], [3, 4], Result).
```

Output:
```text
Result = [1, 2, 3, 4].
```

**2. Reverse a list**

Query:
```prolog
?- reverse_list([a, b, c], Result).
```

Output:
```text
Result = [c, b, a].
```

**3. Search for an element**

Query:
```prolog
?- member_search(b, [a, b, c]).
```

Output:
```text
true.
```

**4. Find the length of a list**

Query:
```prolog
?- list_length([10, 20, 30, 40], Length).
```

Output:
```text
Length = 4.
```

## Result

Append, reverse, member search, and list length operations were performed successfully using Prolog list predicates.

## Conclusion

This experiment introduced basic list handling in Prolog. It demonstrated how built-in predicates can be used to combine lists, reverse their order, search for elements, and count the number of elements.