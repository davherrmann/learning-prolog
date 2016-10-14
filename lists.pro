% Define a predicate is_list/1 which is true if the passed argument is a list.
% Use pattern matching.
% ?- is_list([1, 2, 3]).
% yes
% ?- is_list([1, 2 | 3]).
% no
is_list2([]).
is_list2([_ | TAIL]) :- is_list2(TAIL).

% Define a predicate member/2 which is true when the first argument is a member
% the list passed as second argument.
% ?- member(2, [1, 2, c]).
% true
% ?- member(a, [1, 2, 3]).
% false
member2(E, L) :- append(_, [E | _], L).

% Define a predicate flatten/2 which is true when the first argument is a list L
% (may have sublists) and the second argument is a list holding all elements of
% the list L and all elements of the sublists of L which are no lists.
% ?- flatten([1, [8, 3], [3, [5, 6], 2], 8], X).
% X = [1, 8, 3, 3, 5, 6, 2, 8]
flatten2([], []).
flatten2([E], [E]) :- \+is_list(E).
flatten2([E], FLAT_E) :- flatten2(E, FLAT_E).
flatten2([E | TAIL], FLATTENED) :-
  flatten2([E], FLAT_E),
  flatten2(TAIL, FLAT_TAIL),
  append(FLAT_E, FLAT_TAIL, FLATTENED).

% Define a predicate length/2 which is true when the first argument is a list
% and the second argument represents the length of the list.
% Represent the length n as a zero surrounded by n pairs of squared brackets:
% ?- length([], X).
% X = 0
% ?- length([1, 2], X).
% X = [[0]]
% ?- length([1, 2, 3, 4, 5], X).
% X = [[[[[0]]]]]
length2([], 0).
length2([_ | TAIL], [TAIL_LENGTH]) :- length2(TAIL, TAIL_LENGTH).
