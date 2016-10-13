% Implement a predicate sort2(A, B) which is true when A is a list of numbers
% and B is a sorted list of these numbers.

% checks if a list of numbers is sorted (ascending)
sorted([]).
sorted([_]).
sorted([E1, E2 | R]) :- E1 =< E2, sorted([E2 | R]).

% creates all possible permutations of a list
permutation2([], []).
permutation2([E], [E]).
permutation2(L1, [E2 | R2]) :- without(E2, L1, R1), permutation2(R1, R2).

% list without E results in second list
without(E, [E | TAIL], TAIL).
without(E, [HEAD | TAIL1], [HEAD | TAIL2]) :- without(E, TAIL1, TAIL2).

% warning: slow performance
% possible solutions: all permutations of unsorted list
% correct solution: sorted permutation
sort2(Unsorted, Sorted) :- permutation2(Unsorted, Sorted), sorted(Sorted).
