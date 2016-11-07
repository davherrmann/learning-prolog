% list, key to search, accumulator, result
as_search__([], _, RESULT, RESULT).
as_search__([[K, V] | TAIL], KEY, ACC, RESULT) :-
  K = KEY,
  append(ACC, [V], NEWACC),
  as_search__(TAIL, KEY, NEWACC, RESULT).
as_search__([_ | TAIL], KEY, ACC, RESULT) :-
  as_search__(TAIL, KEY, ACC, RESULT).

as_search(L, KEY, RESULT) :- as_search__(L, KEY, [], RESULT).

search_if_not_cancelled(_, genug).
search_if_not_cancelled(L, KEY) :-
  as_search(L, KEY, RESULT),
  write(RESULT),
  nl.

read_and_search(L, KEY) :-
  read(KEY),
  search_if_not_cancelled(L, KEY), !.

as_search(L) :-
  repeat,
  read_and_search(L, KEY),
  KEY = genug.
