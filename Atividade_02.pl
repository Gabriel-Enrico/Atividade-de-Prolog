% fatos
aluno(joao).
aluno(maria).
aluno(gabriel).
aluno(enrico).

matriculado(joao).
matriculado(maria).
matriculado(gabriel).

% regras
pode_acessar(X) :-
    aluno(X),
    matriculado(X).

% querys
% pode_acessar(enrico).
% pode_acessar(X).