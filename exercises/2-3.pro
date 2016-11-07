remove(E, L, L_without_E) :-
  append(L1, [E | L2], L),
  append(L1, L2, L_without_E).

is_perm([], []).
is_perm(L, [HEAD | TAIL]) :-
  remove(HEAD, L, NEWL),
  is_perm(NEWL, TAIL).

gen_perm(L) :-
  is_perm([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], L).
