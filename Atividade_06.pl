% fatos

pai(joao, gabriel).
pai(joao, maria).
pai(carlos, joao).

mae(ana, gabriel).
mae(ana, maria).
mae(patricia, joao).


% regras
% Quem é avô de determinada pessoa
avo(Avo, Neto) :-
    pai(Avo, Pai),
    pai(Pai, Neto).

avo(Avo, Neto) :-
    pai(Avo, Mae),
    mae(Mae, Neto).
% Quem são os filhos de determinada pessoa
filho(Filho, Pai) :-
    pai(Pai, Filho).

filho(Filho, Mae) :-
    mae(Mae, Filho).
% Quem possui o mesmo pai
mesmo_pai(Pessoa1, Pessoa2) :-
    pai(Pai, Pessoa1),
    pai(Pai, Pessoa2),
    Pessoa1 \= Pessoa2.

% querys
% avo(X, gabriel).
% filho(X, joao).
% mesmo_pai(X, maria).