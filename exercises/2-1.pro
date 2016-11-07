insert(ELEMENT, [], [], [ELEMENT]).
insert(ELEMENT, L1, L2, SORTED) :-
  [HEAD | _] = L2,
  HEAD >= ELEMENT,
  append(L1, [ELEMENT | L2], SORTED).
insert(ELEMENT, L1, [HEAD | TAIL], SORTED) :-
  append(L1, [HEAD], NEWL1),
  insert(ELEMENT, NEWL1, TAIL, SORTED).

insertsort__([], SORTED, SORTED).
insertsort__([HEAD | TAIL], ACC, SORTED) :-
  insert(HEAD, [], ACC, NEWSORTED),
  insertsort__(TAIL, NEWSORTED, SORTED).

insertsort([], []).
insertsort(UNSORTED, SORTED) :-
  insertsort__(UNSORTED, [], SORTED).
