% Fatos
roteador(ligado).
internet(funciona).
wifi(conectado).

% Regras
diagnostico('Roteador desligado') :- verificar_roteador.
diagnostico('Wi-Fi desconectado') :- verificar_wifi.
diagnostico('Provedor da internet não está funcionando') :- verificar_provedor.
diagnostico('A conexão está funcionando normalmente') :- conexao_funciona.

verificar_roteador :-
    roteador(desligado).


verificar_wifi :-
    roteador(ligado),
    wifi(desconectado).


verificar_provedor :-
    roteador(ligado),
    wifi(conectado),
    internet(desfuncional).


conexao_funciona :-
    roteador(ligado),
    wifi(conectado),
    internet(funciona).

