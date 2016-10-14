% An association list is a lists with elements of the form [K, D] with K being
% the key and D the data.
% Implement a predicate as_find/3 which is true when the first argument is
% instanciated with an association list L, the second argument with a key K,
% the third argument with Data D and [K, D] being an element of L.
as_find([[K, D] | _], K, D).
as_find([_ | L], K, D) :- as_find(L, K, D).
