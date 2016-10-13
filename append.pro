% Implement append/3
% Implement last/2, member/2, remove/3, isSublist/2 using append

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
append2([E | TAIL], L2, [E | TAIL_and_L2]) :- append2(TAIL, L2, TAIL_and_L2).

last2(L, E) :- append2(_, [E], L).

member2(E, L) :- append2(_, [E | _], L).

remove2(E, L, L_without_E) :-
  append2(L1, [E | L2], L),
  append2(L1, L2, L_without_E).

sublist2(SUBLIST, L) :-
  append2(_, L2, L),
  append2(SUBLIST, _, L2).
