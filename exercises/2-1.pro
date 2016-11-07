insert(E, [], [E]).
insert(E1, [E2 | T1], [E2 | T2]) :-
  E1 > E2,
  insert(E1, T1, T2).
insert(E1, [E2 | T], [E1, E2 | T]) :-
  E1 =< E2.

insertsort__([], SORTED, SORTED).
insertsort__([HEAD | TAIL], ACC, SORTED) :-
  insert(HEAD, ACC, NEWACC),
  insertsort__(TAIL, NEWACC, SORTED).

insertsort(UNSORTED, SORTED) :-
  insertsort__(UNSORTED, [], SORTED).
