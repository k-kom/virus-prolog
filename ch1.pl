% 1
truth(virus_c, virus_b, 881.1).
truth(virus_b, virus_a, 870.9).
truth(virus_d, virus_a, 877.5).
truth(virus_e, virus_c, 890.1).
truth(virus_e, virus_d, 890.1).
truth(virus_a, virus_e, 900.3).

parent(X, Y) :-
  truth(X, Y, _).

birth_date(X, Y) :-
  truth(X, _, Y).

% sibling(X, Y) :-
%   truth(X, A, _), truth(Y, A, _).

older_sibling(X, Y) :-
  truth(X, A, U), truth(Y, A, V), U>V.

sibling(X, Y) :-
  older_sibling(X, Y).
sibling(X, Y) :-
  older_sibling(Y, X).

pparent(X, Y) :-
  parent(X, A), parent(A, Y).

ppparent(X, Y) :-
  pparent(X, A), parent(A, Y).

pppparent(X, Y) :-
  ppparent(X, A), parent(A, Y).

% 2
address_table(canter, yappu, usa, 6-1111).
address_table(yab_and_jin, yama, japan, 5319-0246).
address_table(kakunika, palpat, pakistan, 33-2345).
address_table(dobon, circus, geme, 421-7530).

producer(X, Y) :-
  address_table(X, Y, _, _).

address(X, Y) :-
  address_table(X, _, Y, _).

tel_number(X, Y) :-
  address_table(X, _, _, Y).

% 3
% To avoid discontiguous warning, hate should be declared first
hate(virus_a, yab_and_jin).
hate(yab_and_jin, canter).
hate(yab_and_jin, dobon).
hate(dobon, canter).

love(virus_a, canter).
love(canter, virus_a).
love(canter, dobon).
love(yab_and_jin, virus_a).

love(X, Y) :-
  hate(X, Z), hate(Z, Y).
