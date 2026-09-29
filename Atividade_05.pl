% fatos
distancia(joao, curta).
distancia(maria, longa).
distancia(gabriel, curta).

chuva(joao, nao).
chuva(maria, nao).
chuva(gabriel, sim).

carro(joao, nao).
carro(maria, sim).
carro(gabriel, sim).


% regras
transporte(Pessoa, caminhar) :-
    distancia(Pessoa, curta),
    chuva(Pessoa, nao).

transporte(Pessoa, bicicleta) :-
    distancia(Pessoa, longa),
    chuva(Pessoa, nao).

transporte(Pessoa, carro) :-
    chuva(Pessoa, sim),
    carro(Pessoa, sim).

% querys
% transporte(joao, X). (caminhar)
% transporte(maria, X). (bicicleta)
% transporte(gabriel, X). (carro)