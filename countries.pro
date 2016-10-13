% Every one of the countries should be coloured with one of the colours
% red, yellow, green or blue in a way that neighbouring countries
% have different colours.
%
% ╔═══╦═══╦═══╗
% ║   ║ 2 ║ 5 ║
% ║   ╠═══╣   ║
% ║ 1 ║ 3 ╠═══╣
% ║   ╠═══╣   ║
% ║   ║ 4 ║ 6 ║
% ╚═══╩═══╩═══╝

colour(red).
colour(yellow).
colour(green).
colour(blue).

different(red, yellow).
different(red, green).
different(red, blue).
different(yellow, red).
different(yellow, green).
different(yellow, blue).
different(green, red).
different(green, yellow).
different(green, blue).
different(blue, red).
different(blue, yellow).
different(blue, blue).

colouring(C1, C2, C3, C4, C5, C6) :-
  colour(C1), colour(C2), colour(C3), colour(C4), colour(C5), colour(C6).

correctColouring(C1, C2, C3, C4, C5, C6) :-
  different(C1, C2), different(C1, C3), different(C1, C4),
  different(C2, C3), different(C2, C5),
  different(C3, C4), different(C3, C5), different(C3, C6),
  different(C4, C6),
  different(C5, C6).

% find solution with:
% ?- colouring(C1, C2, C3, C4, C5, C6), correctColouring(C1, C2, C3, C4, C5, C6).
