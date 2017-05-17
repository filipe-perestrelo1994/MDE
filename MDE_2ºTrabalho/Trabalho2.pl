%Regras basicas

membro(X,[X|_]).
membro(X,[_|Cauda]):-membro(X,Cauda).

concatenar([],L,L).
concatenar([C|R],L,[C|T]):-concatenar(R,L,T).

/*
Versão ineficaz

maximo_list([X],X).
maximo_list([X|Tail],X):-
	maximo_list(Tail,Y),
	X>=Y.
maximo_list([X|Tail],Y):-
	maximo_list(Tail,Y),
	X<Y.
*/


/*
Versão eficaz

maximo_list([],MaxSF,MaxSF).
maximo_list([X|Tail],MaxSF,Result):-
	Aux2 is max(X,MaxSF),
	maximo_list(Tail,Aux2,Result).
maximo_list([X|Tail],Result):-
	maximo_list(Tail,X,Result).

*/

%Versão eficaz simplificada para putos como eu!

maximo_list([],MaxSF,MaxSF).
maximo_list([X|Tail],MaxSF,Result):-
	X>=MaxSF,
	maximo_list(Tail,X,Result).
maximo_list([X|Tail],MaxSF,Result):-
	X<MaxSF,
	maximo_list(Tail,X,Result).




/*

itinerario(X,Y,[X,Y]):-
	trosso(X,Y,_,_,_).
itinerario(X,Y,Itinerario):-
	trosso(X,Z,_,_,_),
	itinerario(Z,Y,It2),
	append([X],It2,Itinerario).

*/






%Portugal

cidade(lisboa,litoral,portugal,[comboio,aviao,autocarro,barco]).
cidade(porto,litoral,portugal,[comboio,aviao,autocarro,barco]).
cidade(faro,litoral,portugal,[comboio,aviao,autocarro,barco]).

percurso(lisboa,porto,274).
percurso(lisboa,faro,216).
percurso(lisboa,madrid,502).
percurso(porto,vigo,120).
percurso(faro,cadis,155).



%Espanha

cidade(madrid,interior,espanha,[comboio,aviao,autocarro]).
cidade(barcelona,litoral,espanha,[comboio,aviao,autocarro,barco]).
cidade(bilbao,litoral,espanha,[comboio,autocarro,barco]).
cidade(sevilha,litoral,espanha,[comboio,autocarro,barco]).
cidade(vigo,litoral,espanha,[comboio,autocarro,barco]).
cidade(cadis,litoral,espanha,[comboio,autocarro,barco]).

percurso(madrid,sevilha,372).
percurso(madrid,cadis,487).
percurso(madrid,barcelona,504).
percurso(madrid,bilbao,322).
percurso(cadis,sevilha,115).
percurso(sevilha,barcelona,804).
percurso(vigo,bilbao,486).
percurso(bilbao,barcelona,466).
percurso(barcelona,andorra,135).

%Andorra

cidade(andorra,montanhosa,andorra,[comboio,autocarro]).

percurso(andorra,bordeus,309).
percurso(andorra,marselha,326).

%França

cidade(paris,interior,franca,[comboio,aviao,autocarro]).
cidade(lyon,interior,franca,[comboio,aviao,autocarro]).
cidade(marselha,litoral,franca,[comboio,aviao,autocarro,barco]).
cidade(nice,litoral,franca,[comboio,autocarro,barco]).
cidade(monaco,litoral,franca,[comboio,aviao,autocarro,barco]).
cidade(nantes,litoral,franca,[comboio,autocarro,barco]).
cidade(bordeus,litoral,franca,[comboio,autocarro,barco]).
cidade(lille,interior,franca,[comboio,autocarro,barco]).


percurso(marselha,nice,158).
percurso(nice,monaco,12).
percurso(marselha,lyon,275).
percurso(bordeus,nantes,274).
percurso(lyon,paris,393).
percurso(nantes,paris,342).
percurso(paris,lille,204).
percurso(paris,londres,343).
percurso(paris,luxemburgo,294).
percurso(lille,bruxelas,93).
percurso(paris,berlim,877).
percurso(nice,turim,159).

%Itália

cidade(turim,montanhoso,italia,[comboio,autocarro]).
cidade(milao,montanhoso,italia,[comboio,aviao,autocarro]).
cidade(roma,litoral,italia,[comboio,aviao,autocarro,barco]).
cidade(napoles,litoral,italia,[comboio,autocarro,barco]).
cidade(palermo,ilha,italia,[comboio,autocarro,barco]).

cidade(valletta,ilha,malta,[aviao,barco]).

percurso(turim,milao,143).
percurso(milao,roma,479).
percurso(milao,ljublijana,423).
percurso(milao,zurique,217).
percurso(roma,napoles,194).
percurso(napoles,palermo,319).
percurso(palermo,valletta,269).

%Eslovénia

cidade(ljublijana,interior,eslovenia,[comboio,aviao,autocarro]).

percurso(ljublijana,zagreb,114).
percurso(ljublijana,viena,277).
percurso(ljublijana,budapeste,379).

%Croácia

cidade(zagreb,interior,croacia,[comboio,aviao,autocarro]).

percurso(zagreb,sarajevo,287).
percurso(zagreb,belgrado,368).
percurso(zagreb,budapeste,299).

%Bósnia-Herzegovina

cidade(sarajevo,interior,bosnia_herzegovina,[comboio,aviao,autocarro]).

percurso(sarajevo,belgrado,198).
percurso(sarajevo,podgorica,172).

%Sérvia

cidade(belgrado,interior,servia,[comboio,aviao,autocarro]).

percurso(belgrado,sofia,327).
percurso(belgrado,bucareste,448).
percurso(belgrado,budapeste,319).

%Montenegro

cidade(podgorica,interior,montenegro,[comboio,aviao,autocarro]).


percurso(podgorica,skopje,185).

%Macedónia

cidade(skopje,interior,macedonia,[comboio,aviao,autocarro]).

percurso(skopje,atenas,487).

%Grécia

cidade(atenas,litoral,grecia,[comboio,aviao,autocarro,barco]).
cidade(olimpo,montanhoso,grecia,[comboio,autocarro]).


percurso(atenas,olimpo,125).
percurso(atenas,istambul,561).
percurso(atenas,nicosia,915).

%Bulgária

cidade(sofia,interior,bulgaria,[comboio,aviao,autocarro]).


percurso(sofia,atenas,525).
percurso(sofia,istambul,501).

%Turquia

cidade(istambul,litoral,turquia,[comboio,aviao,autocarro,barco]).
cidade(ancara,interior,turquia,[comboio,aviao,autocarro]).


percurso(istambul,ancara,350).
percurso(istambul,nicosia,755).


%Chipre

cidade(nicosia,ilha,chipre,[aviao,barco]).


/*

Regras da máxima importância

*/

%D - Distancia entre A e B


caminho(A,B,D):-percurso(A,B,D),A\=B,D is D.
caminho(B,A,D):-percurso(A,B,D),A\=B,D is D.
caminho(A,B,D):-caminho(A,C,D1),caminho(C,B,D2),A\=B,D is D1+D2.
caminho(A,B,CaminhoTotal):-passo(A,B,[],CaminhoTotal).

juntarcondicional(CaminhoAndado,via(Cidade1,Cidade2,D),ListaDeCaminhos):-
	not(membro(via(Cidade1,Cidade2,D),CaminhoAndado)),
	not(membro(via(Cidade2,Cidade1,D),CaminhoAndado)),
	concatenar(CaminhoAndado,[via(Cidade1,Cidade2,D)],ListaDeCaminhos).

passo(CidadeCorrente,CidadeDestino,CaminhoAndado,CaminhoTotal):-
	caminho(CidadeCorrente,CidadeDestino,D),
	juntarcondicional(CaminhoAndado,via(CidadeCorrente,CidadeDestino,D),CaminhoTotal).

passo(CidadeCorrente,CidadeDestino,CaminhoAndado,CaminhoTotal):-
	caminho(CidadeCorrente,ProximaCidade,D),
	juntarcondicional(CaminhoAndado,via(CidadeCorrente,ProximaCidade,D),C1),
	passo(ProximaCidade,CidadeDestino,C1,CaminhoTotal).




e_membro(E,[E|_]).
e_membro(E,[_|R]):-e_membro(E,R).







/*

preco(X,Y,CustoPorKm,CustoTotal):-
	distancia(X,Y,Dist),
	CustoTotal is Dist*CustoPorKm.

distancia(X,Y,Dist):-
	caminho(X,Z,D1,_,_),
	distancia(Z,Y,D2),
	Dist is D1+D2.

distancia(X,Y,Dist):-
	caminho(X,Y,Dist,_,_).

*/





%Escrever texto

escrever(S):-atom_chars(S,L),escr(L),!.
escr([]).
escr([C|R]):-put_char(C),escr(R).



%Ler uma string com "return" ou "enter"

ler(S):-lerl(L),atom_codes(S,L),!.
lerl(L):-get_code(C),tratar(C,L).
tratar(10,[]):-nl.
tratar(13,[]):-nl.
tratar(C,[C|R]):-lerl(R).

%Confirmar

confirmar(Q):-escrever(Q),ler(R),afirmativo(R).
afirmativo(sim).
afirmativo(s).
afirmativo('Sim').


\+cidade(Cidade,_,_,_):-
	assert(cidade(Cidade,_,_,_)).

\+cidade(Cidade,_,_,LMT1):-
	assert(cidade(Cidade,_,_,concatenar([LMT1],[MT],LMT))).





/*

Fim das regras de máxima importância

*/



show_menu:-
	writeln('1-Adicionar cidades e meios de transporte'),
	writeln('2-Adicionar ligações entre cidades, horários e preços'),
	writeln('3-Alterar cidades e meios de transporte'),
	writeln('4-Remover ligações entre cidades, horários e preços').

executar_escolha(1):-
	writeln('adicione a cidade'),
	readln(Cidade),
	writeln('adicione o meio de transporte'),
	readln(MT),
	!.

executar_escolha(2):-
	writeln('adicione o ponto de partida'),
	readln(Cidade1),
	writeln('adicione o destino'),
	readln(Cidade2),
	writeln('adicione o horario'),
	readln(Horario),
	writeln('adicione o preco'),
	readln(Preco),
	!.

executar_escolha(3):-
	writeln('digite a cidade a alterar'),
	readln(Cidade),
	writeln('digite o meio de transporte a alterar'),
	readln(MT),
	!.

executar_escolha(4):-
	writeln('digite o ponto de partida'),
	readln(Cidade1),
	writeln('digite o destino'),
	readln(Cidade2),
	writeln('digite o horario a remover'),
	readln(Horario),
	writeln('digite o preco a remover'),
	readln(Preco),
	!.

executar_escolha(sair):-
	writeln('adeus e obrigado pela sua preferencia'),
	!.





inicio:-
	repeat,
	show_menu,
	write('escolha a opcao...:'),read(Escolha),
	executar_escolha(Escolha),
	Escolha==sair,
	!.


























