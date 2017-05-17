%factos
/*

isto e um comentário do caraças.
O André não acredita nisto, mas
este é um GRANDE comentário!!!!

*/


parte(robot,base).
parte(robot,manipulador).
parte(robot,garra).
parte(robot,controlador).
parte(garra,punho).
parte(garra,dados).
parte(garra,sensor).

pertence(P,O):-parte(O,P).
pertence(P,O):-parte(Z,P),pertence(Z,O).





garra(g1,2,5,electrica).
garra(g2,1.5,4,pneumatica).
garra(g3,2,6,pneumatica).

componente(p1,1.5,4).
componente(p2,2,6).

obter_garra(C,G):-componente(C,Pc,Lc),garra(G,Pg,Lg,_),Pc=<Pg,Lc=<Lg.





pai(adao,caim).
pai(adao,abel).
pai(adao,set).
pai(caim,enoque).
pai(enoque,irad).
pai(set,enos).
pai(enos,cainan).
mae(eva,caim).
mae(eva,abel).
mae(eva,set).

filho(F,P):-pai(P,F);mae(P,F).

avo(A,N):-pai(A,P),pai(P,N).
avo(A,N):-pai(A,P),mae(P,N).
avoh(A,N):-mae(A,P),mae(P,N).
avoh(A,N):-mae(A,P),pai(P,N).

antepassado(A,D):-pai(A,D).
antepassado(A,D):-mae(A,D).
antepassado(A,D):-filho(D,P),antepassado(A,P).

irmao(X,Y):-pai(P,X),pai(P,Y),X\=Y.

tio(T,S):-irmao(T,P),pai(P,S).

primo(P1,P2):-filho(P1,X),filho(P2,Y),irmao(X,Y).




arco(a,b).
arco(b,d).
arco(a,c).
arco(c,d).
arco(c,e).

conexao(X,Y):-arco(X,Y).
conexao(X,Y):-arco(X,Z),conexao(Z,Y).

dista(a,b,50).
dista(b,d,60).
dista(a,c,30).
dista(c,d,25).
dista(c,e,40).

distancia(X,Y,D):-dista(X,Y,D).
distancia(X,Y,D):-dista(X,Z,D1),distancia(Z,Y,D2),D is D1+D2.



res(a,b,10).
res(b,c,20).
res(c,d,5).

rserial(X,Y,R):-res(X,Y,R).
rserial(X,Y,R):-res(X,Z,R1),rserial(Z,Y,R2),R is R1+R2.

rpar(X,Y,R):-res(X,Y,R).
rpar(X,Y,R):-res(X,Z,R1),rpar(Z,Y,R2), R is ((R1*R2)/(R1+R2)).





