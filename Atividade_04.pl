% fatos
professor(joao).
professor(maria).
professor(carlos).
professor(gabriel).

aluno(enrico).
aluno(ana).
aluno(clara).
aluno(lucas).

autorizado(enrico).
autorizado(ana).
autorizado(joao).
autorizado(maria).

% regras
acessar_laboratorio(X) :-
    professor(X);
    aluno(X),
    autorizado(X).

% querys
% acessar_laboratorio(joao). (professor)
% acessar_laboratorio(ana). (aluno com autorização)
% acessar_laboratorio(lucas). (aluno sem autorização)