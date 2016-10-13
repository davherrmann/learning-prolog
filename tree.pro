% binary tree
% leaf(X)
% tree(N1, N2)

% Implement a predicate which puts all leaves of a tree in a list.
leaves(leaf(X), [X]).
leaves(tree(X, Y), L) :-
  leaves(X, L1),
  leaves(Y, L2),
  append(L1, L2, L).

% Implement a predicate which swaps all nodes of a tree
swap(leaf(X), leaf(X)).
swap(tree(X, Y), T) :-
  swap(X, T1),
  swap(Y, T2),
  T = tree(T2, T1).
