% Implement append/3

% Following two predicates are not necessary:
% useless, not faster than append2([], L, L)
% append2([], [], []).

% not necessary, but faster when second argument is empty list because the
% first list does not get 'destructured'
% append2(L, [], L).

% simplest case: if first list is empty, result equals the second list
append2([], L, L).
% if first list has at least one element, this is also the first element of
% the result - the rest of the resulting list is the concatenation of the
% tail of the first list and the second list
append2([E | TAIL], L2, [E | TAIL_and_L2]) :- append(TAIL, L2, TAIL_and_L2).
