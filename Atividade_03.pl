% fatos
professor(carlos).
professor(adam).
professor(ranyelson).

coordenador(bea).
coordenador(joao).

% regras
pode_entrar(X) :-
    professor(X);
    coordenador(X).

% querys
% pode_entrar(joao)
% pode_entrar(X)