%Regras:
caminho(X,Y,D,Transporte,Data,Preco) :- percurso(X,Y,D,Transporte,Data,Preco), X \= Y.
caminho(Y,X,D,Transporte,Data,Preco) :- percurso(X,Y,D,Transporte,Data,Preco), X \= Y.
caminho(X,Y,D,_,Data,Preco) :- caminho(X,Z,D1,_,Data,Preco1),
			       caminho(Z,Y,D2,_,Data,Preco2), X \= Y,
			       D is D1+D2,
			       Preco is Preco1+Preco2.

membro(X,[X|_]).
membro(X,[_|Cauda]) :- membro(X,Cauda).

preco(X,Y,CustoPorKM,CustoTotal) :-
	         distancia(X,Y,Dist), CustoTotal is Dist*CustoPorKM.

%Concatenacao de Listas:
concatenar([],L,L).
concatenar([C|R],L,[C|T]) :-concatenar(R,L,T).

% CC-CidadeCorrente;
% CD-CidadeDestino;
% CA-CaminhoAndado;
% CT-CaminhoTotal;
% PC-ProximaCidade
passo(CC, CD, CA, CT) :- caminho(CC, CD, D),
		  juntarCond(CA, via(CC, CD, D), CT).
passo(CC, CD, CA, CT) :- caminho(CC, PC, D),
	          juntarCond(CA, via(CC, PC, D), C1),
		  passo(PC, CD, C1, CT).
juntarCond(CA, via(C1, C2, D), ListaDeCaminhos) :-
		  not(membro(via(C1, C2, D), CA)),
		  not(membro(via(C2, C1, D), CA)),
		  concatenar(CA, [via(C1, C2, D)], ListaDeCaminhos).

%Escrever Texto:
escrever(S):-atom_chars(S,L),escr(L),!.
escr([]).
escr([C|R]):-put_char(C),escr(R).

%Ler uma String com "Return" ou "enter":
ler(S):-lerl(L), atom_codes(S,L),!.
lerl(L):-get_code(C), tratar(C,L).
tratar(10,[]):-nl.
tratar(13,[]):-nl.
tratar(C, [C|R]):-lerl(R).

confirmar(Q):-escrever(Q),ler(R),afirmativo(R).
afirmativo(sim).
afirmativo(s).
afirmativo('S').
afirmativo('Sim').
afirmativo(ok).
afirmativo(claro).
afirmativo('of course').


% Menu:
inicio :- ler_kB, repeat, show_menu, write('Escolher a Opcao Desejada:'),
	  ler(Escolha),
	  executar_escolha(Escolha), Escolha == sair, !.

show_menu :- writeln('1 - Adiciona Cidade.'),
	     writeln('2 - Adiciona Meio de Transporte.'),
	     writeln('3 - Adiciona Ligacao entre Cidades.'),
	     writeln('4 - Altera Cidade.'),
	     writeln('5 - Altera Meio de Transporte.'),
	     writeln('6 - Remove Ligacao entre Cidades.'),
	     writeln('7 - Lista todas as Cidades de um Pais.'),
	     writeln('8 - Lista todas as Cidades que possuem um determinado atributo.').


% FUNCTIONAL REQUIREMENT 1:
executar_escolha('1') :- %adiciona cidades
      writeln('Nome da Cidade'), ler(Nome),
      writeln('Pais'), ler(Pais),
      writeln('Atributo'), ler(Atributo),
      adiciona_cidade(Nome, Pais, Atributo), !;
      writeln('Esta cidade ja estava na BD'), !.

executar_escolha('2') :- %adiciona meio de transportes
      writeln('Nome do Meio de Transporte'), ler(MT),
      adiciona_meioTrans(MT), !;
      writeln('Este meio de transporte ja estava na BD'), !.


% FUNCTIONAL REQUIREMENT 2:
executar_escolha('3') :- %adiciona ligações entre cidades
      writeln('Nome da Cidade 1:'), ler(C1),
      writeln('Nome da Cidade 2:'), ler(C2),
      writeln('Distancia:'), ler(Dist),
      writeln('Meio de Transporte:'), ler(MT),
      writeln('Hora:'), ler(H),
      writeln('Minuto:'), ler(M),
      writeln('Preco:'), ler(P),
      adiciona_ligacao(C1, C2, Dist, MT, (H, M), P), !;
      writeln('O percurso que deseja adicionar ja existe'), !.


% FUNCTIONAL REQUIREMENT 3:
executar_escolha('4') :- %alterar cidade
	            write('Nome da Cidade:'), ler(Cidade),
		    cidade(Cidade, Pais_antes, Atributo_antes),
		    write('Pais:'), ler(Pais),
		    (Pais == no, Pais2=Pais_antes; Pais \= no,
		     Pais2 = Pais),
		    write('Atributo:'), ler(At),
		    (At==no, At2=Atributo_antes; At \= no,
		     At2=At),
		    altera_cidade(Cidade, Pais, At), !.

executar_escolha('5') :- %alterar meio de transporte
		  writeln('Nome do Meio de Transporte:'),
		  ler(MT1),
		  writeln('Nome do Novo Meio de Transporte:'),
		  ler(MT2),
		  altera_mt(MT1, MT2), !.


% FUNCTIONAL REQUIREMENT 4:
executar_escolha('6') :- %remove ligações entre cidades
      writeln('Nome da Cidade 1:'), ler(C1),
      writeln('Nome da Cidade 2:'), ler(C2),
      writeln('Hora:'), ler(H),
      writeln('Minuto:'), ler(M),
      writeln('Preco:'), ler(P),
      remove_ligacao(C1, C2, (H, M), P), !;
      writeln('O percurso que deseja eliminar nao existe'), !.


% FUNCTIONAL REQUIREMENT 5:
executar_escolha('7') :- %listar cidades do mesmo pais
	writeln('Nome do Pais:'), ler(Pais),
	findall(C, cidade(C,Pais,_), L),
	writeln(L), !.

executar_escolha('8') :- %listar cidades do litoral
	writeln('Tipo de Atributo:'), ler(Atributo),
	findall(C, cidade(C,_,Atributo), L),
	writeln(L), !.


% FUNCTIONAL REQUIREMENT 6:
% listar os transportes e horarios entre 2 cidades consecutivas
transporte(C1,C2,[T]):-percurso(C1,C2,_,T,_,_).
transporte(C1,C2,[_|R]):-percurso(C1,C2,_,R,_,_),
	transporte(C1,C2,R).


%horario: ((h1,m1),(h2,m2),(h3,m3))


adiciona_cidade(Nome, Pais, Atributo) :-
	             \+ cidade(Nome, Pais, _),
		      assert(cidade(Nome, Pais, Atributo)).

adiciona_meioTrans(MT) :- \+ mTransporte(MT),
	                  assert(mTransporte(MT)).

remove_ligacao(C1, C2, Hor, Preco) :-
	   percurso(C1, C2, _, _, Hor, Preco),
	   retract(percurso(C1, C2, _, _, Hor, Preco)).

adiciona_ligacao(C1, C2, Dist, MT, Hor, Preco) :-
	   \+ percurso(C1, C2, Dist, MT, Hor, Preco),
	   assert(percurso(C1, C2, Dist, MT, Hor, Preco)).

altera_cidade(Cidade, PaisNovo, AtributoNovo) :-
	   \+ cidade(Cidade, PaisNovo, AtributoNovo),
	   retract(cidade(Cidade, _, _)),
	   assert(cidade(Cidade,PaisNovo, AtributoNovo)).

altera_mt(MT1, MT2) :- mTransporte(MT1), \+ mTransporte(MT2),
		       retract(mTransporte(MT1)),
		       assert(mTransporte(MT2)).




% Menu 2:
executar_escolha('9') :- writeln('Lista de cidades e horarios:').
executar_escolha('10') :- writeln('Indique as duas cidades e a
		       data para a qual pretende obter um
		       itinerario:'),
	               readln(Cidade1), readln(Cidade2),
		       readln(Data), !.
executar_escolha('11') :- writeln('Indique as duas cidades e a
		       data para a qual pretende obter o
		       itinerario mais economico:'),
	               readln(Cidade1), readln(Cidade2),
		       readln(Data), !.
executar_escolha('12') :- writeln('Indique as duas cidades e a
		       data para a qual pretende obter o
		       itinerario mais rapido:'),
	               readln(Cidade1), readln(Cidade2),
		       readln(Data), !.

executar_escolha('13') :- %alterar cidade
	            write('Qual a cidade..:'), read(Cidade),
		    cidade(Cidade, _, _),
		    retractall(cidade(Nome, _, _)).

% executar_escolha(n)
executar_escolha(sair) :- write('Fim do Programa.'), !.


% tem que estar no fim:
executar_escolha(Escolha) :-
	write('A opcao '), write(Escolha),
	write(' nao esta disponivel.'), nl, !.



executar_open(100) :- gravar_kB, !.

gravar_kB :- tell('c:\\users\\andré\\desktop\\mdelab2\\data.pl'), listing(cidade),
	     listing(caminho), told.

ler_kB :- retractall(cidade(_,_,_)),
	  retractall(mTransporte(_)),
	  retractall(pais(_)),
	  retractall(percurso(_,_,_,_,_,_)),
	  %retractall(caminho(_,_,_)),
	  consult('c:\\users\\andré\\desktop\\mdelab2\\data.pl').


trosso(a,b,50,ae,4).
trosso(a,c,30,ip,0).
trosso(a,c,35,ic,0).
trosso(b,d,60,ae,6).
trosso(b,d,60,ic,0).
trosso(c,d,25,pr,0).
trosso(c,e,40,pr,0).

distancia(X,Y,Dist):-percurso(X,Y,Dist,_,_,_,_).
distancia(X,Y,Dist):-percurso(X,Z,D1,_,_,_,_),distancia(Z,Y,D2),Dist is D1+D2.


bi_ligar(X,Y,Dist,Tipo,Custo):-trosso(X,Y,_), !.
bi_ligar(X,Y,_,_,_):-trosso(Y,X,_).


itinerario(X,Y,[X,Y]):-trosso(X,Y,_,_,_).
itinerario(X,Y,Itinerario):-trosso(X,Z,_,_,_), itinerario(Z,Y,It2), append([X], It2, Itinerario).

itinerario(X,Y,[X|Itin]):-trosso(X,Z,_,_,_), itinerario(Z,Y,Itin).

% ?-itinerario(c,e,L).

%com filtro
  itinerario(X, Y, JA_visitados, [X,Y]):-
	trosso(X,Y,_,_,_),
	\+ member(Y, JA_visitados).
        %outros filtros
  itinerario(X, Y, JA_visitados, [X|Itinerario]):-
	trosso(X,Z,_,_,_),
	\+ member(Z, JA_visitados),
	% outros filtros
	itinerario(Z, Y, [Z|JA_visitados], Itinerario).

% ?-itinerario2(a,e,[],Itin).

  itinerario2(X, Y, JA_visitados, [(X, Y, Dist)]):-
	trosso(X, Y, Dist,_,_),
	\+ member((X, Y, Dist), JA_visitados),
	\+ member((_,X,_), JA_visitados).
	%outros filtros
  itinerario2(X, Y, JA_visitados, []):-
	trosso(X, Z, Dist, _, _),
	\+ member((X, Z, Dist), JA_visitados),
	\+ member((_,X,Dist), JA_visitados),
	%outros fltros
	itinerario2(Y, Z, [(X, Z, Dist)|JA_visitados], Itinerario).

%Versao Ineficaz:
maximo_list([X], X).
maximo_list([X|Tail],X):-
	maximo_list(Tail,Y), X>=Y.
maximo_list([X|Tail],Y):-
	maximo_list(Tail,Y), X<Y.

%Versao EFICAZ:
maximo_list([],MaxSF,MaxSF).
maximo_list([X|Tail],MaxSF,Result):-
	Aux2 is max(X,MaxSF),
	maximo_list(Tail, Aux2, Result).
maximo_list([X|Tail],Result) :-
	maximo_list(Tail,X,Result).

%2ª Versao:
maximo_list([],MaxSF,MaxSF).
maximo_list([X|Tail],MaxSF,Result):-
	X >= MaxSF,
	maximo_list(Tail, X, Result).
maximo_list([X|Tail],MaxSF,Result) :-
	X < MaxSF,
	maximo_list(Tail,MaxSF,Result).
%ou:
maximo_list([],MaxSF,MaxSF).
maximo_list([X|Tail],(Itin,Dsf,Result):-
	(Itin,D) = X,
	D >= Dsf,
	maximo_list(Tail, (Itin,D), Result).
maximo_list([X|Tail],MaxSF,Result) :-
	X < MaxSF,
	maximo_list(Tail,MaxSF,Result).










































































