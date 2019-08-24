blood_type(type_a, gene_a, gene_a).
blood_type(type_a, gene_a, gene_o).
blood_type(type_a, gene_o, gene_a).
blood_type(type_b, gene_b, gene_b).
blood_type(type_b, gene_b, gene_o).
blood_type(type_b, gene_o, gene_b).
blood_type(type_ab, gene_a, gene_b).
blood_type(type_ab, gene_b, gene_a).
blood_type(type_o, gene_o, gene_o).

parent_child(X, Y, Z) :-
  blood_type(X, X1, _),
  blood_type(Y, Y1, _),
  blood_type(Z, X1, Y1).
