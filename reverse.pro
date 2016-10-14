% Define a predicate reverse_deep/2 which is true when the first argument is
% a list and the second argument is the reversed list. All sublists of the given
% list must be reversed as well.
% Use accumulators.
reverse_deep__([], A, A).
reverse_deep__(E, [], E) :- \+is_list(E).
reverse_deep__([H | L], A, R) :-
  reverse_deep__(H, [], Hrev),
  reverse_deep__(L, [Hrev | A], R).

reverse_deep(L, R) :- reverse_deep__(L, [], R).
