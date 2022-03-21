
% Aluna: Patrícia Lima Felismino
% Projeto: ChatBot em prolog de Perguntas e Respostas.
%Cruzeiro do Sul Virtual

:-include(base_de_dados1_rede).
:-include(base_de_dados2_rede).
		
bot_rede:-
	format('Saudações! Eu sou o Bot_Rede.'),nl,
	format('Voce deseja saber sobre: '),nl,
	  				
	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).
	
consulta_base_dados(Entrada, RespostaCorreta) :-
	definida_por(Entrada, RespostaCorreta), !.	
	
encerra_sessao(Entrada):-
	Entrada = ('fim').
	
	
