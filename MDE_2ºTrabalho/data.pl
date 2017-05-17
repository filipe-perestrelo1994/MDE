%Regra de Preços:
preco(X,Y,CustoPorKM,CustoTotal) :-
	         distancia(X,Y,Dist), CustoTotal is Dist*CustoPorKM.

:-dynamic pais/1.
:-dynamic mTransporte/1.
:-dynamic cidade/3.
:-dynamic percurso/6.

%Factos:
%Paises:
pais(islandia).
pais(irlanda).
pais(reinoUnido).
pais(belgica).
pais(holanda).
pais(suica).
pais(luxemburgo).
pais(liechtenstein).
pais(suecia).
pais(dinamarca).
pais(noruega).
pais(finlandia).
pais(repCheca).
pais(alemanha).
pais(romenia).
pais(hungria).
pais(austria).
pais(eslovaquia).
pais(polonia).
pais(moldavia).
pais(ucrania).
pais(bielorrussia).
pais(lituania).
pais(letonia).
pais(estonia).
pais(russia).
pais(portugal).
pais(espanha).
pais(andorra).
pais(franca).
pais(italia).
pais(malta).
pais(eslovenia).
pais(croacia).
pais(bosniaHerzegovina).
pais(servia).
pais(montenegro).
pais(macedonia).
pais(grecia).
pais(bulgaria).
pais(turquia).
pais(chipre).

%Meios de Transporte:
mTransporte(comboio).
mTransporte(autocarro).
mTransporte(barco).
mTransporte(aviao).

%Cidades:
%Islandia:
cidade(reykjavik, islandia, litoral).
cidade(vatnajokull, islandia, montanhoso).
cidade(keflavik, islandia, litoral).
cidade(akureyri, islandia, litoral).
cidade(husavik, islandia, litoral).
cidade(seydisfjordur, islandia, litoral).
cidade(hofn, islandia, litoral).

%Irlanda
cidade(dublin, irlanda, litoral).
cidade(cork, irlanda, litoral).

%Reino Unido:
cidade(plymouth, reinoUnido, litoral).
cidade(southampton, reinoUnido, litoral).
cidade(london, reinoUnido, litoral).
cidade(cardiff, reinoUnido, litoral).
cidade(birmingham, reinoUnido, interior).
cidade(liverpool, reinoUnido, litoral).
cidade(manchester, reinoUnido, interior).
cidade(newcastle, reinoUnido, litoral).
cidade(belfast, reinoUnido, litoral).
cidade(glasgow, reinoUnido, interior).
cidade(edinburg, reinoUnido, litoral).
cidade(perth, reinoUnido, interior).
cidade(aberdeen, reinoUnido, litoral).
cidade(wick, reinoUnido, litoral).

%Belgica:
cidade(brussels, belgica, interior).
cidade(antwerp, belgica, interior).
cidade(brugge, belgica, interior).
cidade(liege, belgica, interior).

%Holanda:
cidade(amsterdam, holanda, litoral).
cidade(rotherdam, holanda, litoral).
cidade(utrecht, holanda, interior).
cidade(zwolle, holanda, interior).
cidade(eindhoven, holanda, interior).

%Suica:
cidade(bern, suica, interior).
cidade(luzern, suica, interior).
cidade(zurich, suica, interior).
cidade(geneve, suica, interior).
cidade(neuchatel, suica, interior).

%Luxemburgo:
cidade(luxembourg, luxemburgo, interior).
cidade(differdange, luxemburgo, interior).
cidade(wiltz, luxemburgo, interior).

%Liechtenstein:
cidade(vaduz, liechtenstein, interior).
cidade(mals, liechtenstein, interior).

%Dinamarca:
cidade(copenhagen, dinamarca, litoral).
cidade(odense, dinamarca, ilha).
cidade(viborg, dinamarca, interior).

%Noruega:
cidade(oslo, noruega, litoral).
cidade(tromso, noruega, litoral).
cidade(bergen, noruega, litoral).
cidade(vardo, noruega, litoral).

%Suecia:
cidade(stockholm, suecia, litoral).
cidade(malmo, suecia, litoral).
cidade(goteborg, suecia, litoral).
cidade(ostersund, suecia, litoral).

%Finlandia:
cidade(helsinki, finlandia, litoral).
cidade(kemi, finlandia, litoral).
cidade(turku, finlandia, litoral).
cidade(tampere, finlandia, litoral).

%Republica Checa:
cidade(praga, repCheca, interior).
cidade(pilsen, repCheca, interior).
cidade(liberec, repCheca, interior).
cidade(brun, repCheca, interior).

%Alemanha:
cidade(berlin, alemanha, interior).
cidade(bremen, alemanha, interior).
cidade(hannover, alemanha, interior).
cidade(frankfurt, alemanha, interir).
cidade(dusseldorf, alemanha, litoral).
cidade(stuttgart, alemanha, interior).
cidade(leipzig, alemanha, interior).
cidade(munich, alemanha, interior).
cidade(cologne, alemanha, litoral).
cidade(karlsruhe, alemanha, interior).

%Romenia:
cidade(bucarest, romenia, interior).
cidade(brasov, romenia, interior).

%Hungria:
cidade(budapest, hungria, interior).
cidade(pecs, hungria, interior).

%Austria:
cidade(salzburg, austria, montanhosa).
cidade(vienn, austria, montanhosa).

%Eslovaquia:
cidade(bratislava, eslovaquia, interior).
cidade(zilina, eslovaquia, interior).

%Polonia:
cidade(warsaw, polonia, interior).
cidade(wroclaw, polonia, interior).
cidade(cracovia, polonia, interior).
cidade(gdansk, polonia, litoral).
cidade(stettin, polonia, interior).
cidade(lodz, polonia, interior).

%Moldavia:
cidade(chisinau, moldavia, interior).
cidade(tiraspol, moldavia, interior).
cidade(bender, moldavia, interior).
cidade(balti, moldavia, interior).

%Ucrania:
cidade(kiev, ucrania, interior).
cidade(kharkiv, ucrania, interior).
cidade(donetsk, ucrania, interior).
cidade(nikopol, ucrania, interior).
cidade(odessa, ucrania, litoral).
cidade(dnipropetrovsk, ucrania, interior).
cidade(lviv, ucrania, interior).

%Bielorrússia:
cidade(minsk, bielorrussia, montanhosa).
cidade(pinsk, bielorrussia, interior).
cidade(mazyr, bielorrussia, montanhosa).
cidade(baranavichy, bielorrussia, interior).
cidade(homyel, bielorrussia, montanhosa).
cidade(vitsyebsk, bielorrussia, montanhosa).

%Lituânia:
cidade(vilnius, lituania, montanhosa).
cidade(kaunas, lituania, interior).
cidade(klaipeda, lituania, litoral).

%Letónia:
cidade(riga, letonia, litoral).
cidade(daugavpils, letonia, montanhosa).

%Estónia:
cidade(tallinn, estonia, litoral).
cidade(tartu, estonia, interior).
cidade(viljandi, estonia, interior).

%Rússia:
cidade(moscow, russia, interior).
cidade(kaliningrad, russia, litoral).
cidade(saint_Petersburg, russia, litoral).
cidade(yaroslavl, russia, interior).
cidade(nizhny_Novgorod, russia, interior).
cidade(saransk, russia, interior).
cidade(kazan, russia, interior).
cidade(samara, russia, interior).
cidade(yekaterinburg, russia, interior).
cidade(rostov-on-don, russia, litoral).
cidade(volgograd, russia, interior).
cidade(krasnodar, russia, litoral).
cidade(sochi, russia, litoral).

%Portugal:
cidade(lisboa, portugal, litoral).
cidade(porto, portugal, litoral).
cidade(faro, portugal, litoral).

%Espanha:
cidade(madrid, espanha, interior).
cidade(barcelona, espanha, litoral).
cidade(bilbao, espanha, litoral).
cidade(sevilha, espanha, litoral).
cidade(vigo, espanha, litoral).
cidade(cadis, espanha, litoral).

%Andorra:
cidade(andorra, andorra, montanhoso).

%França:
cidade(paris, franca, interior).
cidade(lyon, franca, interior).
cidade(marselha, franca, litoral).
cidade(nice, franca, litoral).
cidade(monaco, franca, litoral).
cidade(nantes, franca, litoral).
cidade(bordeus, franca, litoral).
cidade(lille, franca, interior).

%Itália:
cidade(turim, italia, montanhoso).
cidade(milao, italia, montanhoso).
cidade(roma, italia, litoral).
cidade(napoles, italia, litoral).
cidade(palermo, italia, ilha).

%Malta:
cidade(valletta, malta, ilha).

%Eslovénia:
cidade(ljublijana, eslovenia, interior).

%Croácia:
cidade(zagreb, croacia, interior).

%Bósnia-Herzegovina:
cidade(sarajevo, bosniaHerzegovina, interior).

%Sérvia:
cidade(belgrado, servia, interior).

%Montenegro:
cidade(podgorica, montenegro, interior).

%Macedónia
cidade(skopje, macedonia, interior).

%Grécia:
cidade(atenas, grecia, litoral).
cidade(olimpo, grecia, montanhoso).

%Bulgária:
cidade(sofia, bulgaria, interior).

%Turquia:
cidade(istambul, turquia, litoral).
cidade(ancara, turquia, interior).

%Chipre:
cidade(nicosia, chipre, ilha).

%Percursos:
%Islandia
% percurso(cidade1, cidade2, dist, mTransp, data((h1,min1),(h2,min2)),preco)
percurso(reykjavik, vatnajokull, 246, autocarro, (9, 0),(12,0),
		preco(reykjavik, vatnajokull, 0.2, 246*0.2)).
percurso(reykjavik, keflavik, 34, autocarro,(9, 0),()
		preco(reykjavik, keflavik, 0.2, 34*0.2)).
percurso(reykjavik, akureyri, 248, autocarro, (12, 23),
		preco(reykjavik, akureyri, 0.2, 248*0.2)).
percurso(reykjavik, husavik, 300, autocarro, (2, 20),
		preco(reykjavik, husavik, 0.2, 300*0.2)).
percurso(reykjavik, seydisfjordur, 394, autocarro, (3, 0),
		preco(reykjavik, seydisfjordur, 0.2, 394*0.2)).
percurso(reykjavik, hofn, 323, autocarro, (9, 40),
		preco(reykjavik, hofn, 0.2, 323*0.2)).
percurso(vatnajokull, keflavik, 280, autocarro, (9, 50),
		preco(vatnajokull, keflavik, 0.2, 280*0.2)).
percurso(vatnajokull, akureyri, 152, autocarro, (23, 0),
		preco(vatnajokull, akureyri, 0.2, 152*0.2)).
percurso(vatnajokull, husavik, 181, autocarro, (21, 0),
		preco(vatnajokull, husavik, 0.2, 181*0.2)).
percurso(vatnajokull, seydisfjordur, 162, autocarro, (9, 32),
		preco(vatnajokull, seydisfjordur, 0.2, 162*0.2)).
percurso(vatnajokull, hofn, 79, autocarro, (9, 34),
		preco(vatnajokull, hofn, 0.2, 79*0.2)).
percurso(keflavik, akureyri, 79, autocarro, (12, 12),
		preco(keflavik, akureyri, 0.2, 79*0.2)).
percurso(keflavik, husavik, 332, autocarro, (23, 3),
		preco(keflavik, husavik, 0.2, 332*0.2)).
percurso(keflavik, seydisfjordur, 429, autocarro, (19, 10),
		preco(keflavik, seydisfjordur, 0.2, 429*0.2)).
percurso(keflavik, hofn, 356, autocarro, (2, 2),
		preco(keflavik, hofn, 0.2, 356*0.2)).
percurso(akureyri, husavik, 52, autocarro, (12, 0),
		preco(akureyri, husavik, 0.2, 52*0.2)).
percurso(akureyri, seydisfjordur, 194, autocarro, (19, 50),
		preco(akureyri, seydisfjordur, 0.2, 194*0.2)).
percurso(akureyri, hofn, 208, autocarro, (18, 20),
		preco(akureyri, hofn, 0.2, 208*0.2)).
percurso(husavik, seydisfjordur, 175, autocarro, (13, 40),
		preco(husavik, seydisfjordur, 0.2, 175*0.2)).
percurso(husavik, hofn, 222, autocarro, (19, 30),
		preco(husavik, hofn, 0.2, 222*0.2)).
percurso(seydisfjordur, hofn, 125, autocarro, (12, 0),
		preco(seydisfjordur, hofn, 0.2, 125*0.2)).

%Irlanda:
percurso(dublin, cork, 218, autocarro, (12, 0),
		preco(dublin, cork, 0.2, 218*0.2)).

%Reino Unido:
percurso(plymouth, southampton, 201, terrestre, ).
percurso(plymouth, london, 308, terrestre, ).
percurso(plymouth, cardiff, 142, terrestre, ).
percurso(plymouth, birmingham, 281, terrestre, ).
percurso(plymouth, liverpool, 347, terrestre, ).
percurso(plymouth, manchester, 369, terrestre, ).
percurso(plymouth, newcastle, 539, terrestre, ).
percurso(plymouth, belfast, 483, maritimo, ).
percurso(plymouth, belfast, 483, aereo, ).
percurso(plymouth, glasgow, 610, terrestre, ).
percurso(plymouth, edinburg, 623, terrestre, ).
percurso(plymouth, perth, 681, terrestre, ).
percurso(plymouth, aberdeen, 764, terrestre, ).
percurso(plymouth, wick, 899, terrestre, ).
percurso(southampton, london, 111, terrestre, ).
percurso(southampton, cardiff, 139, terrestre, ).
percurso(southampton, birmingham, 178, terrestre, ).
percurso(southampton, liverpool, 298, terrestre, ).
percurso(southampton, manchester, 292, terrestre, ).
percurso(southampton, newcastle, 452, terrestre, ).
percurso(southampton, belfast, 510, aereo, ).
percurso(southampton, glasgow, 583, terrestre, ).
percurso(southampton, edinburg, 573, terrestre, ).
percurso(southampton, perth, 645, terrestre, ).
percurso(southampton, aberdeen, 695, terrestre, ).
percurso(southampton, wick, 845, terrestre, ).
percurso(london, cardiff, 210, terrestre, ).
percurso(london, birmingham, 162, terrestre, ).
percurso(london, liverpool, 286, terrestre, ).
percurso(london, manchester, 261, terrestre, ).
percurso(london, newcastle, 397, terrestre, ).
percurso(london, belfast, 517, aereo, ).
percurso(london, glasgow, 555, terrestre, ).
percurso(london, edinburg, 533, terrestre, ).
percurso(london, perth, 609, terrestre, ).
percurso(london, aberdeen, 639, terrestre, ).
percurso(london, wick, 793, terrestre, ).
percurso(cardiff, birmingham, 139, terrestre, ).
percurso(cardiff, liverpool, 212, terrestre, ).
percurso(cardiff, manchester, 229, terrestre, ).
percurso(cardiff, newcastle, 399, terrestre, ).
percurso(cardiff, belfast, 389, aereo, ).
percurso(cardiff, glasgow, 490, terrestre, ).
percurso(cardiff, edinburg, 495, terrestre, ).
percurso(cardiff, perth, 558, terrestre, ).
percurso(cardiff, aberdeen, 631, terrestre, ).
percurso(cardiff, wick, 771, terrestre, ).
percurso(birmingham, liverpool, 126, terrestre, ).
percurso(birmingham, manchester, 113, terrestre, ).
percurso(birmingham, newcastle, 277, terrestre, ).
percurso(birmingham, belfast, 354, aereo, ).
percurso(birmingham, glasgow, 406, terrestre, ).
percurso(birmingham, edinburg, 394, terrestre, ).
percurso(birmingham, perth, 466, terrestre, ).
percurso(birmingham, aberdeen, 518, terrestre, ).
percurso(birmingham, wick, 667, terrestre, ).
percurso(liverpool, manchester, 49, terrestre, ).
percurso(liverpool, newcastle, 195, terrestre, ).
percurso(liverpool, belfast, 233, aereo, ).
percurso(liverpool, belfast, 233, maritimo, ).
percurso(liverpool, glasgow, 285, terrestre, ).
percurso(liverpool, edinburg, 282, terrestre, ).
percurso(liverpool, perth, 349, terrestre, ).
percurso(liverpool, aberdeen, 418, terrestre, ).
percurso(liverpool, wick, 559, terrestre, ).
percurso(manchester, newcastle, 170, terrestre, ).
percurso(manchester, belfast, 270, aereo, ).
percurso(manchester, glasgow, 295, terrestre, ).
percurso(manchester, edinburg, 281, terrestre, ).
percurso(manchester, perth, 354, terrestre, ).
percurso(manchester, aberdeen, 407, terrestre, ).
percurso(manchester, wick, 554, terrestre, ).
percurso(newcastle, belfast, 280, maritimo, ).
percurso(newcastle, glasgow, 194, terrestre, ).
percurso(newcastle, edinburg, 147, terrestre, ).
percurso(newcastle, perth, 226, terrestre, ).
percurso(newcastle, aberdeen, 243, terrestre, ).
percurso(newcastle, wick, 396, terrestre, ).
percurso(belfast, glasgow, 177, aereo, ).
percurso(belfast, aberdeen, 371, aereo, ).
percurso(belfast, aberdeen, 371, maritimo, ).
percurso(glasgow, edinburg, 66, terrestre, ).
percurso(glasgow, perth, 72, terrestre, ).
comboio,[(9,0),(15,0)],[(11,0),(17,0)],42.40 )percurso(glasgow, aberdeen, 194, terrestre, ).
percurso(glasgow, wick, 295, terrestre, ).
percurso(edinburg, perth, 78, terrestre, ).
percurso(edinburg, aberdeen, 148, terrestre, ).
percurso(edinburg, wick, 276, terrestre, ).
percurso(perth, aberdeen, 136, terrestre, ).
percurso(perth, wick, 222, terrestre, ).
percurso(aberdeen, wick, 155, terrestre, ).

%Belgica:
percurso(brussels, antwerp, 46, terrestre, ).
percurso(brussels, brugge, 90, terrestre, ).
percurso(brussels, liege, 89, terrestre, ).
percurso(antwerp, brugge, 80, terrestre, ).
percurso(antwerp, liege, 109, terrestre, ).
percurso(brugge, liege, 178, terrestre, ).

%Holanda:
percurso(amsterdam, rotherdam, 57, terrestre, ).
percurso(amsterdam, utrecht, 48, terrestre, ).
percurso(amsterdam, zwolle, 87, terrestre, ).
percurso(amsterdam, eindhoven, 111, terrestre, ).
percurso(rotherdam, utrecht, 53, terrestre, ).
percurso(rotherdam, zwolle, 130, terrestre, ).
percurso(rotherdam, eindhoven, 87, terrestre, ).
percurso(utrecht, zwolle, 81, terrestre, ).
percurso(utrecht, eindhoven, 64, terrestre, ).
percurso(zwolle, eindhoven, 123, terrestre, ).

%Suica:
percurso(bern, luzern, 57, terrestre, ).
percurso(bern, zurich, 90, terrestre, ).
percurso(bern, geneve, 133, terrestre, ).
percurso(bern, neuchatel, 51, terrestre, ).
percurso(luzern, zurich, 39, terrestre, ).
percurso(luzern, geneve, 190, terrestre, ).
percurso(luzern, neuchatel, 102, terrestre, ).
percurso(zurich, geneve, 224, terrestre, ).
percurso(zurich, neuchatel, 127, terrestre, ).
percurso(geneve, neuchatel, 107, terrestre, ).

%Luxemburgo:
percurso(luxembourg, differdange, 31, terrestre, ).
percurso(luxembourg, wiltz, 29, terrestre, ).
percurso(differdange, wiltz, 49, terrestre, ).

%Liechtenstein:
percurso(vaduz, mals, 9, terrestre, ).

%Dinamarca:
percurso(copenhagen, odense, 140, aereo, ).
percurso(copenhagen, viborg, 214, ).
percurso(odense, viborg, 132).

%Noruega:
percurso(oslo, tromso, 1147, aereo, ).
percurso(oslo, bergen, 304, terrestre, ).
percurso(oslo, vardo, 1488, terrestre, ).
percurso(tromso, bergen, 1205, aereo, ).
percurso(tromso, vardo, 468, terrestre, ).
percurso(bergen, vardo, 1607, terrestre, ).

% percurso(cidade1, cidade2, dist, mTransp, data((h1,min1),(h2,min2)),preco)


%Suecia:
percurso(stockholm, malmo, 528, comboio,(9,0),(13,30),105.60).
percurso(stockholm, goteborg, 402, comboio,(9,0),(13,0),80.40).
percurso(stockholm, ostersund, 445, comboio,(9,0),(13,30),89.00).
percurso(malmo, goteborg, 248, comboio,(9,0),(11,30),49.60 ).
percurso(malmo, ostersund, 857, comboio,(9,0),(17,30),171.40 ).
percurso(goteborg, ostersund, 632, comboio,(9,0),(15,15),126.40 ).

%Finlandia:
percurso(helsinki, kemi, 626, comboio,(9,0),(15,15),125.50 ).
percurso(helsinki, turku, 150, comboio,(9,0),(10,30),30.00 ).
percurso(helsinki, tampere, 160, comboio,[(9,0),(12,0)],[(10,30),(13,30)],32.00 ).
percurso(kemi, turku, 605, comboio,(9,0),(17,0),121.00).
percurso(kemi, tampere, 479, comboio,(9,0),(13,45),95.80 ).
percurso(turku, tampere, 142, comboio, (9,0),(10,30),28.40 ).

%Republica Checa:
percurso(praga, pilsen, 155, comboio,[(9,0),(15,0)],[(10,30),(18,30)],31.00 ).
percurso(praga, liberec, 95, autocarro,[(9,0),(15,0)],[(10,0),(18,0)],9.50 ).
percurso(praga, brun, 186, comboio,(9,0),(10,45),37.20 ).
percurso(pilsen, liberec, 239, comboio,(9,0),(11,15),47.80 ).
percurso(pilsen, brun, 155, autocarro,[(9,0),(15,0)],[(10,45),(18,45)],15.50 ).
percurso(liberec, brun, 212, comboio,[(9,0),(15,0)],[(11,0),(17,0)],42.40 ).

%Alemanha:
percurso(berlin, bremen, 313,comboio,[(9,0),(15,0)],[(12,10),(18,10)],62.60).
percurso(berlin, hannover, 251,comboio,[(9,0),(15,0)],[(11,30),(17,30)],50.20).
percurso(berlin, frankfurt, 423,comboio,[(9,0),(15,0)],[(13,15),(19,15)],84.60).
percurso(berlin, dusseldorf, 477,comboio,[(9,0),(15,0)],[(13,45),(19,45)],95.40).
percurso(berlin, stuttgart, 511,comboio,[(9,0),(15,0)],[(14,0),(20,0)],102.20).
percurso(berlin, leipzig, 149,comboio,[(9,0),(15,0)],[(10,30),(16,30)],29.80).
percurso(berlin, munich, 504,comboio,[(9,0),(15,0)],[(14,0),(20,0)],100.80).
percurso(berlin, cologne, 478,comboio,[(9,0),(15,0)],[(13,45),(19,45)],95.60).
percurso(berlin, karlsruhe, 527,comboio,[(9,0),(15,0)],[(14,15),(20,15)],105.40).
percurso(bremen, hannover, 90,comboio,[(9,0),(15,0)],[(10,0),(16,0)],18.00).
percurso(bremen, frankfurt, 328,comboio,[(9,0),(15,0)],[(12,15),(18,15)],65.60).
percurso(bremen, dusseldorf, 250,comboio,[(9,0),(15,0)],[(11,30),(17,30)],50.00).
percurso(bremen, stuttgart, 478,comboio,[(9,0),(15,0)],[(13,45),(19,45)],95.60).
percurso(bremen, leipzig, 309,comboio,[(9,0),(15,0)],[(12,0),(18,0)],61.80).
percurso(bremen, munich, 582,comboio,[(9,0),(15,0)],[(14,45),(20,45)],116.40).
percurso(bremen, cologne, 271,comboio,[(9,0),(15,0)],[(11,45),(17,45)],54.20).
percurso(bremen, karlsruhe, 454,comboio,[(9,0),(15,0)],[(13,30),(19,30)],90.80).
percurso(hannover, frankfurt, 268,comboio,[(9,0),(15,0)],[(11,30),(17,30)],53.60).
percurso(hannover, dusseldorf, 243,comboio,[(9,0),(15,0)],[(11,30),(17,30)],48.60).
percurso(hannover, stuttgart, 410,comboio,[(9,0),(15,0)],[(13,0),(19,0)],82.00).
percurso(hannover, leipzig, 221,comboio,[(9,0),(15,0)],[(11,15),(17,15)],44.20).
percurso(hannover, munich, 498,comboio,[(9,0),(15,0)],[(14,0),(20,0)],99.60).
percurso(hannover, cologne, 254,comboio,[(9,0),(15,0)],[(11,30),(17,30)],54.80).
percurso(hannover, karlsruhe, 395,comboio,[(9,0),(15,0)],[(13,0),(19,0)],79.00).
percurso(frankfurt, dusseldorf, 179,comboio,[(9,0),(15,0)],[(10,45),(16,45)],35.80).
percurso(frankfurt, stuttgart, 154,comboio,[(9,0),(15,0)],[(10,30),(16,30)],30.80).
percurso(frankfurt, leipzig, 293,comboio,[(9,0),(15,0)],[(12,0),(18,0)],58.60).
percurso(frankfurt, munich, 306,comboio,[(9,0),(15,0)],[(12,0),(18,0)],61.20).
percurso(frankfurt, cologne, 150,comboio,[(9,0),(15,0)],[(10,30),(16,30)],30.00).
percurso(frankfurt, karlsruhe, 126,comboio,[(9,0),(15,0)],[(10,15),(16,15)],25.20).
percurso(dusseldorf, stuttgart, 320,comboio,[(9,0),(15,0)],[(12,15),(18,15)],64.00).
percurso(dusseldorf, leipzig, 389,comboio,[(9,0),(15,0)],[(13,0),(18,0)],77.80).
percurso(dusseldorf, munich, 486,comboio,[(9,0),(15,0)],[(14,45),(19,45)],97.20).
percurso(dusseldorf, cologne, 34,comboio,[(9,0),(15,0)],[(9,15),(15,15)],6.80).
percurso(dusseldorf, karlsruhe, 271,comboio,[(9,0),(15,0)],[(11,45),(17,45)],54.20).
percurso(stuttgart, leipzig, 364,comboio,[(9,0),(15,0)],[(12,45),(18,45)],72.80).
percurso(stuttgart, munich, 190,comboio,[(9,0),(15,0)],[(11,0),(17,0)],38.00).
percurso(stuttgart, cologne, 287,comboio,[(9,0),(15,0)],[(11,45),(17,45)],57.40).
percurso(stuttgart, karlsruhe, 62,comboio,[(9,0),(15,0)],[(9,45),(15,45)],12.40).
percurso(leipzig, munich, 360,comboio,[(9,0),(15,0)],[(12,30),(18,30)],72.00).
percurso(leipzig, cologne, 380,comboio,[(9,0),(15,0)],[(12,45),(17,45)],76.00).
percurso(leipzig, karlsruhe, 384,comboio,[(9,0),(15,0)],[(12,45),(17,45)],76.80).
percurso(munich, cologne, 455,comboio,[(9,0),(15,0)],[(13,30),(19,30)],91.00).
percurso(munich, karlsruhe, 253,comboio,[(9,0),(15,0)],[(11,30),(17,30)],50.60).
percurso(cologne, karlsruhe, 237,comboio,[(9,0),(15,0)],[(11,30),(17,30)],47.40).

%Romenia
percurso(bucarest, brasov, 140, comboio,[(9,0),(15,0)],[(10,30),(16,30)] ,28.00 ).
%horario é uma lista com a data: (hora, dia)

%Hungria
percurso(budapest, pecs, 642, comboio,[(9,0),(15,0)],[(15,30),(21,30)],128.40 ).

%Austria
percurso(vienn, salzburg, 249, comboio,[(9,0),(15,0)],[(11,30),(17,30)],49.80  ).

%Eslovaquia
percurso(bratislava, zilina, 188, comboio,[(9,0),(15,0)],[(10,45),(16,45)],23.60 ).

%Polonia
percurso(warsow, wroclaw, 301,comboio,[(9,0),(15,0)],[(12,00),(18,00)],60.20  ).
percurso(warsow, cracovia, 252,comboio,[(9,0),(15,0)],[(11,30),(17,30)],50.40 ).
percurso(warsow, gdansk, 283,comboio,[(9,0),(15,0)],[(11,45),(17,45)],56.60).
percurso(warsow, stettin, 453, comboio,[(9,0),(15,0)],[(13,30),(19,30)],90.60 ).
percurso(warsow, lodz, 124, comboio,[(9,0),(15,0)],[(10,15),(16,15)],24.80 ).
percurso(wroclaw, cracovia, 235, comboio,[(9,0),(15,0)],[(11,15),(17,15)],47.00 ).
percurso(wroclaw, gdansk, 377,comboio,[(9,0),(15,0)],[(12,45),(18,45)],75.40 ).
percurso(wroclaw, stettin, 309,comboio,[(9,0),(15,0)],[(12,00),(18,00)],61.80  ).
percurso(wroclaw, lodz, 177,comboio,[(9,0),(15,0)],[(10,45),(16,45)],35.40 ).
percurso(cracovia, gdansk, 485,comboio,[(9,0),(15,0)],[(13,45),(19,45)],97.00   ).
percurso(cracovia, stettin, 526,comboio,[(9,0),(15,0)],[(14,30),(20,30)],105.20 ).
percurso(cracovia, lodz, 187,comboio,[(9,0),(15,0)],[(10,45),(16,45)],37.40  ).
percurso(gdansk, stettin, 287,comboio,[(9,0),(15,0)],[(11,45),(17,45)],57.40 ).
percurso(gdansk, lodz, 297,comboio,[(9,0),(15,0)],[(12,00),(18,00)],59.40 ).
percurso(stettin, lodz, 378,comboio,[(9,0),(15,0)],[(12,45),(18,45)],75.60).

%Moldavia
percurso(chisinau, tiraspol, 61,comboio,[(9,0),(15,0)],[(9,30),(15,30)],12.2) .
percurso(chisinau, bender, 50,comboio,[(9,0),(15,0)],[(9,30),(15,30)],10.00)  .
percurso(chisinau, balti, 109,comboio,[(9,0),(15,0)],[(10,00),(16,00)],21.80) .
percurso(tiraspol, bender, 156,comboio,[(9,0),(15,0)],[(10,30),(16,30)],31.20).
percurso(tiraspol, balti, 164,comboio,[(9,0),(15,0)],[(10,30),(16,30)],32.80) .
percurso(bender, balti, 156,comboio,[(9,0),(15,0)],[(10,30),(16,30)],31.20)  .

%Ucrania
percurso(kiev, kharkiv, 410,comboio,[(9,0),(15,0)],[(13,00),(19,00)],82.00).
percurso(kiev, donetsk, 593,comboio,[(9,0),(15,0)],[(15,00),(21,00)],118.00  ).
percurso(kiev, nikopol, 427,comboio,[(9,0),(15,0)],[(13,15),(19,15)],85.40 ).
percurso(kiev, odessa, 442, comboio,[(9,0),(15,0)],[(13,30),(19,30)],88.40  ).
percurso(kiev, dnipropetrovsk, 389,comboio,[(9,0),(15,0)],[(13,00),(19,00)],77.80   ).
percurso(kiev, lviv, 468, comboio,[(9,0),(15,0)],[(13,30),(19,30)],93.60 ).
percurso(kharkiv, donetsk, 245,comboio,[(9,0),(15,0)],[(11,30),(17,30)],49.00  ).
percurso(kharkiv, nikopol, 300,comboio,[(9,0),(15,0)],[(12,00),(18,00)],60.00  ).
percurso(kharkiv, odessa, 564,comboio,[(9,0),(15,0)],[(14,30),(20,30)],112.80  ).
percurso(kharkiv, dnipropetrovsk, 188,comboio,[(9,0),(15,0)],[(11,00),(15,00)],23.60  ).
percurso(kharkiv, lviv, 874, comboio,[(9,0),(15,0)],[(17,45),(23,45)],174.80 ).
percurso(donetsk, nikopol, 259, comboio,[(9,0),(15,0)],[(11,30),(17,30)],51.80 ).
percurso(donetsk, odessa, 560, comboio,[(9,0),(15,0)],[(14,30),(20,30)],112.00).
percurso(donetsk, dnipropetrovsk, 240,comboio,[(9,0),(15,0)],[(11,30),(17,30)],48.00 ).
percurso(donetsk, lviv, 1025,comboio,[(9,0),(15,0)],[(19,15),(1,15)],205.00).
percurso(nikopol, odessa, 303,comboio,[(9,0),(15,0)],[(12,00),(18,00)],60.60  ).
percurso(nikopol, dnipropetrovsk, 112,comboio,[(9,0),(15,0)],[(10,00),(16,00)],22.40 ).
percurso(nikopol, lviv, 801,comboio,[(9,0),(15,0)],[(17,00),(23,00)],160.20).
percurso(odessa, dnipropetrovsk, 391,comboio,[(9,0),(15,0)],[(13,00),(19,00)],78.20 ).
percurso(odessa, lviv, 621,comboio,[(9,0),(15,0)],[(15,15),(21,15)],124.20 ).
percurso(dnipropetrovsk, lviv, 811, comboio,[(9,0),(15,0)],[(17,00),(23,00)],162.20).

%Bielorrússia
percurso(minsk, pinsk, 220,comboio,[(9,0),(15,0)],[(11,15),(17,15)],44.00).
percurso(minsk, mazyr, 234, comboio,[(9,0),(15,0)],[(11,15),(17,15)],46.80 ).
percurso(minsk, baranavichy, 133,comboio,[(9,0),(15,0)],[(10,15),(16,15)],26.60 ).
percurso(minsk, homyel, 279,comboio,[(9,0),(15,0)],[(11,45),(17,45)],55.80 ).
percurso(minsk, vitsyebsk, 222,comboio,[(9,0),(15,0)],[(11,15),(17,15)],44.40 ).
percurso(pinsk, mazyr, 215,comboio,[(9,0),(15,0)],[(11,00),(17,00)],43.00 ).
percurso(pinsk, baranavichy, 112,comboio,[(9,0),(15,0)],[(10,00),(16,00)],22.40 ).
percurso(pinsk, homyel, 333,comboio,[(9,0),(15,0)],[(12,15),(18,15)],66.60 ).
percurso(pinsk, vitsyebsk, 435, comboio,[(9,0),(15,0)],[(13,15),(19,15)],87.00 ).
percurso(mazyr, baranavichy, 249, comboio,[(9,0),(15,0)],[(11,30),(17,30)],49.80 ).
percurso(mazyr, homyel, 125,comboio,[(9,0),(15,0)],[(10,15),(16,15)],25.00 ).
percurso(mazyr, vitsyebsk, 354, comboio,[(9,0),(15,0)],[(12,30),(18,30)],70.80 ).
percurso(baranavichy, homyel, 342, comboio,[(9,0),(15,0)],[(12,30),(18,30)],68.40).
percurso(baranavichy, vitsyebsk, 355, comboio,[(9,0),(15,0)],[(12,30),(18,30)],71.00 ).
percurso(homyel, vitsyebsk, 310,comboio,[(9,0),(15,0)],[(12,00),(18,00)],62.00 ).

%Lituania
percurso(vilnius, kaunas, 91,comboio,[(9,0),(15,0)],[(10,00),(16,00)],18.20 ).
percurso(vilnius, klaipeda, 287,comboio,[(9,0),(15,0)],[(11,45),(17,45)],57.40 ).
percurso(kaunas, klaipeda, 198,comboio,[(9,0),(15,0)],[(11,00),(17,00)],39.60  ).

%Letonia
percurso(riga, daugavpils, 191,comboio,[(9,0),(15,0)],[(11,00),(17,00)],38.20  ).

%Estonia
percurso(tallinn, tartu, 163, comboio,[(9,0),(15,0)],[(10,30),(16,30)],32.60 ).
percurso(tallinn, viljandi, 128,comboio,[(9,0),(15,0)],[(10,15),(16,15)],25.60 ).
percurso(tartu, viljandi, 66, comboio,[(9,0),(15,0)],[(9,30),(15,30)],13.20 ).

%Russia
percurso(moscow, kaliningrad, 1088,aviao,(9,0),(11,00),326.40 ).
percurso(moscow, saint_Petersburg,634,aviao,(9,0),(10,00),190.20   ).
percurso(moscow, yaroslavl, 274,aviao,(9,0),(10,00),82.20  ).
percurso(moscow, nizhny_Novgorod, 490,aviao,(9,0),(10,00),147.00   ).
percurso(moscow, saransk, 512,aviao,(9,0),(10,00),153.60   ).
percurso(moscow, kazan, 718,aviao,(9,0),(10,00),215.40   ).
percurso(moscow, samara, 857,aviao,(9,0),(11,00),257.10   ).
percurso(moscow, yekaterinburg, 1417,aviao,(9,0),(12,00),425.10  ).
percurso(moscow, rostov-on-don, 958,aviao,(9,0),(11,00),287.40  ).
percurso(moscow, volgograd, 910,aviao,(9,0),(11,00),273.00  ).
percurso(moscow, krasnodar, 1194,aviao,(9,0),(11,00),358.20   ).
percurso(moscow, sochi, 1359,aviao,(9,0),(12,00),407.70  ).
percurso(kaliningrad, saint_Petersburg, 825,aviao,(9,0),(10,00),247.50 ).
percurso(kaliningrad, yaroslavl, 1236,aviao,(9,0),(12,00),370.80  ).
percurso(kaliningrad, nizhny_Novgorod, 781,aviao,(9,0),(10,00),234.30  ).
percurso(kaliningrad, saransk, 1587,aviao,(9,0),(12,00),476.10  ).
percurso(kaliningrad, kazan, 1804, aviao,(9,0),(13,00),541.20).
percurso(kaliningrad, samara, 1929,  aviao,(9,0),(13,00),578.70 ).
percurso(kaliningrad, yekaterinburg, 2482,aviao,(9,0),(14,00),744.60  ).
percurso(kaliningrad, rostov-on-don, 1573, aviao,(9,0),(14,00),471.90  ).
percurso(kaliningrad, volgograd, 1770, aviao,(9,0),(15,00),531.00  ).
percurso(kaliningrad, krasnodar, 1695,aviao,(9,0),(14,00),508.50  ).
percurso(kaliningrad, sochi, 1853, aviao,(9,0),(15,00),555.90).
percurso(saint_Petersburg, yaroslavl, 568,aviao,(9,0),(10,00),170.40  ).
percurso(saint_Petersburg, nizhny_Novgorod, 166, aviao,(9,0),(10,00),49.80  ).
percurso(saint_Petersburg, saransk, 1099, aviao,(9,0),(11,00),329.70  ).
percurso(saint_Petersburg, kazan, 1199,aviao,(9,0),(11,00),359.70 ).
percurso(saint_Petersburg, samara, 1425,aviao,(9,0),(12,00),427.50  ).
percurso(saint_Petersburg, yekaterinburg, 1782,aviao,(9,0),(13,00),534.60  ).
percurso(saint_Petersburg, rostov-on-don, 1539,aviao,(9,0),(12,00),461.70 ).
percurso(saint_Petersburg, volgograd, 1543, aviao,(9,0),(12,00),462.90 ).
percurso(saint_Petersburg, krasnodar, 1753,  aviao,(9,0),(13,00),525.90 ).
percurso(saint_Petersburg, sochi, 1924,aviao,(9,0),(13,00),577.20 ).
percurso(yaroslavl, nizhny_Novgorod, 484, aviao,(9,0),(10,00),145.20 ).
percurso(yaroslavl, saransk, 550,aviao,(9,0),(10,00),165.00  ).
percurso(yaroslavl, kazan, 633, aviao,(9,0),(10,00),189.90 ).
percurso(yaroslavl, samara, 862,  aviao,(9,0),(11,00),258.60 ).
percurso(yaroslavl, yekaterinburg, 1265, aviao,(9,0),(12,00),379.50  ).
percurso(yaroslavl, rostov-on-don, 1197, aviao,(9,0),(11,00),359.10  ).
percurso(yaroslavl, volgograd, 1083,  aviao,(9,0),(11,00),324.90).
percurso(yaroslavl, krasnodar, 1440,aviao,(9,0),(12,00),432.00).
percurso(yaroslavl, sochi, 1601, aviao,(9,0),(12,00),480.30 ).
percurso(nizhny_Novgorod, saransk, 980, aviao,(9,0),(11,00),294.00  ).
percurso(nizhny_Novgorod, kazan, 1114,aviao,(9,0),(11,00), 334.20 ).
percurso(nizhny_Novgorod, samara, 1316, aviao,(9,0),(12,00),394.80  ).
percurso(nizhny_Novgorod, yekaterinburg, 1739, aviao,(9,0),(13,00),521.70  ).
percurso(nizhny_Novgorod, rostov-on-don, 1375,aviao,(9,0),(12,00),412.50  ).
percurso(nizhny_Novgorod, volgograd, 1391, aviao,(9,0),(12,00),417.30 ).
percurso(nizhny_Novgorod, krasnodar, 1587,aviao,(9,0),(12,00),476.10   ).
percurso(nizhny_Novgorod, sochi, 1758,aviao,(9,0),(13,00),527.40).
percurso(saransk, kazan, 308, aviao,(9,0),(10,00),92.40).
percurso(saransk, samara, 344,aviao,(9,0),(10,00),103.20  ).
percurso(saransk, yekaterinburg, 1013, aviao,(9,0),(11,00),303.90 ).
percurso(saransk, rostov-on-don, 862,aviao,(9,0),(11,00),258.60 ).
percurso(saransk, volgograd, 609,aviao,(9,0),(10,00),182.70 ).
percurso(saransk, krasnodar, 1108,aviao,(9,0),(11,00),332.40  ).
percurso(saransk, sochi, 1241,aviao,(9,0),(11,00),372.30 ).
percurso(kazan, samara, 315, aviao,(9,0),(10,00),94.50  ).
percurso(kazan, yekaterinburg, 717,  aviao,(9,0),(11,00),215.10).
percurso(kazan, rostov-on-don, 1150,aviao,(9,0),(11,00),345.00  ).
percurso(kazan, volgograd, 846, aviao,(9,0),(11,00),253.80 ).
percurso(kazan, krasnodar, 1391, aviao,(9,0),(12,00),417.30  ).
percurso(kazan, sochi, 1511,aviao,(9,0),(12,00),453.30 ).
percurso(samara, yekaterinburg, 800,aviao,(9,0),(11,00),240.00  ).
percurso(samara, rostov-on-don, 972, aviao,(9,0),(11,00),291.60  ).
percurso(samara, volgograd, 612, aviao,(9,0),(10,00),183.60 ).
percurso(samara, krasnodar, 1192, aviao,(9,0),(11,00),357.60  ).
percurso(samara, sochi, 1289,aviao,(9,0),(11,00),386.70  ).
percurso(yekaterinburg, rostov-on-don, 1772,aviao,(9,0),(13,00),531.60   ).
percurso(yekaterinburg, volgograd, 1405,aviao,(9,0),(12,00),421.50 ).
percurso(yekaterinburg, krasnodar, 1989, aviao,(9,0),(13,00),596.70  ).
percurso(yekaterinburg, sochi, 2076, aviao,(9,0),(13,00),622.80 ).
percurso(rostov-on-don, volgograd, 392,aviao,(9,0),(10,00),117.60  ).
percurso(rostov-on-don, krasnodar, 249,aviao,(9,0),(10,00),74.70   ).
percurso(rostov-on-don, sochi, 403,aviao,(9,0),(10,00),120.90 ).
percurso(volgograd, krasnodar, 585,aviao,(9,0),(10,00),175.50  ).
percurso(volgograd, sochi, 677,aviao,(9,0),(10,00),203.10 ).
percurso(krasnodar, sochi, 171,aviao,(9,0),(10,00),51.30 ).




%Portugal

percurso(lisboa,porto,274, comboio,[(9,0),(15,0)],[(11,45),(17,45)],54.80 ).
percurso(lisboa,faro,216, comboio,[(9,0),(15,0)],[(11,0),(17,0)],43.20 ).
percurso(lisboa,madrid,502, comboio,[(9,0),(15,0)],[(14,0),(19,0)],100.40 ).
percurso(porto,vigo,120, comboio,[(9,0),(15,0)],[(10,15),(16,15)],24.00 ).
percurso(faro,cadis,155, comboio,[(9,0),(15,0)],[(10,30),(16,30)],31.00 ).



%Espanha

percurso(madrid,sevilha,372, comboio,[(9,0),(15,0)],[(12,45),(18,45)],74.40 ).
percurso(madrid,cadis,487, comboio,[(9,0),(15,0)],[(13,45),(19,45)],97.40).
percurso(madrid,barcelona,504, comboio,[(9,0),(15,0)],[(14,0),(20,0)],100.80 ).
percurso(madrid,bilbao,322, comboio,[(9,0),(15,0)],[(12,15),(18,15)],64.40 ).
percurso(cadis,sevilha,115, comboio,[(9,0),(15,0)],[(10,15),(16,15)],23.00 ).
percurso(sevilha,barcelona,804, comboio,[(9,0),(15,0)],[(17,0),(1,0)],160.80 ).
percurso(vigo,bilbao,486, comboio,[(9,0),(15,0)],[(13,45),(19,45)],97.20 ).
percurso(bilbao,barcelona,466, comboio,[(9,0),(15,0)],[(13,30),(19,30)],93.20 ).
percurso(barcelona,andorra,135, comboio,[(9,0),(15,0)],[(10,15),(16,15)],27.00 ).

%Andorra

percurso(andorra,bordeus,309, comboio,[(9,0),(15,0)],[(12,0),(18,0)],61.80 ).
percurso(andorra,marselha,326, comboio,[(9,0),(15,0)],[(12,15),(18,15)],65.20 ).

%França

percurso(marselha,nice,158, comboio,[(9,0),(15,0)],[(10,30),(16,30)],31.60 ).
percurso(nice,monaco,12, comboio,[(9,0),(15,0)],[(9,15),(15,15)],2.40 ).
percurso(marselha,lyon,275, comboio,[(9,0),(15,0)],[(11,45),(17,45)],55.00 ).
percurso(bordeus,nantes,274, comboio,[(9,0),(15,0)],[(11,45),(17,45)],54.80 ).
percurso(lyon,paris,393, comboio,[(9,0),(15,0)],[(13,0),(19,0)],78.60 ).
percurso(nantes,paris,342, comboio,[(9,0),(15,0)],[(12,30),(18,30)],68.40 ).
percurso(paris,lille,204, comboio,[(9,0),(15,0)],[(11,0),(17,0)],40.80 ).
percurso(paris,londres,343, comboio,[(9,0),(15,0)],[(12,30),(18,30)],68.60 ).
percurso(paris,luxemburgo,294, comboio,[(9,0),(15,0)],[(12,0),(18,0)],58.80 ).
percurso(lille,bruxelas,93, comboio,[(9,0),(15,0)],[(10,0),(16,0)],18.60 ).
percurso(paris,berlim,877, aviao,[(9,0),(15,0)],[(10,30),(16,30)],263.10 ).
percurso(nice,turim,159, comboio,[(9,0),(15,0)],[(10,30),(16,30)],31.80 ).

%Itália

percurso(turim,milao,143, comboio,[(9,0),(15,0)],[(10,30),(16,30)],28.60).
percurso(milao,roma,479, comboio,[(9,0),(15,0)],[(13,45),(19,45)],95.80).
percurso(milao,ljublijana,423, comboio,[(9,0),(15,0)],[(13,30),(19,30)],84.60).
percurso(milao,zurique,217, comboio,[(9,0),(15,0)],[(11,0),(17,0)],43.40 ).
percurso(roma,napoles,194, comboio,[(9,0),(15,0)],[(11,0),(17,0)],38.80 ).
percurso(napoles,palermo,319, barco,[(9,0),(15,0)],[(12,0),(18,0)],63.80 ).
percurso(palermo,valletta,269, aviao,[(9,0),(15,0)],[(9,15),(15,15)],80.70 ).

%Eslovénia

percurso(ljublijana,zagreb,114, comboio,[(9,0),(15,0)],[(10,0),(16,0)],22.80 ).
percurso(ljublijana,viena,277, comboio,[(9,0),(15,0)],[(11,45),(17,45)],55.40 ).
percurso(ljublijana,budapeste,379, comboio,[(9,0),(15,0)],[(12,45),(18,45)],75.80).

%Croácia

percurso(zagreb,sarajevo,287, comboio,[(9,0),(15,0)],[(11,45),(17,45)],57.40 ).
percurso(zagreb,belgrado,368, comboio,[(9,0),(15,0)],[(12,30),(18,30)],73.60 ).
percurso(zagreb,budapeste,299, comboio,[(9,0),(15,0)],[(12,0),(18,0)],59.80 ).

%Bósnia-Herzegovina

percurso(sarajevo,belgrado,198, comboio,[(9,0),(15,0)],[(11,0),(17,0)],39.60 ).
percurso(sarajevo,podgorica,172, comboio,[(9,0),(15,0)],[(10,45),(16,45)],34.40 ).

%Sérvia

percurso(belgrado,sofia,327, comboio,[(9,0),(15,0)],[(12,15),(18,15)],65.40 ).
percurso(belgrado,bucareste,448, comboio,[(9,0),(15,0)],[(13,30),(19,30)],89.60 ).
percurso(belgrado,budapeste,319, comboio,[(9,0),(15,0)],[(12,15),(18,15)],63.80 ).

%Montenegro

percurso(podgorica,skopje,185, comboio,[(9,0),(15,0)],[(10,45),(16,45)],37.00 ).

%Macedónia

percurso(skopje,atenas,487, comboio,[(9,0),(15,0)],[(14,0),(20,0)],97.40 ).

%Grécia

percurso(atenas,olimpo,125, comboio,[(9,0),(15,0)],[(10,15),(16,15)],25.00 ).
percurso(atenas,istambul,561, comboio,[(9,0),(15,0)],[(14,30),(20,30)],112.20 ).
percurso(atenas,nicosia,915, aviao,[(9,0),(15,0)],[(11,0),(17,0)],274.50 ).

%Bulgária

percurso(sofia,atenas,525, comboio,[(9,0),(15,0)],[(14,15),(20,15)],105.00 ).
percurso(sofia,istambul,501, comboio,[(9,0),(15,0)],[(14,0),(20,0)],100.20 ).

%Turquia

percurso(istambul,ancara,350, comboio,[(9,0),(15,0)],[(12,30),(18,30)],70.00 ).
percurso(istambul,nicosia,755, aviao,[(9,0),(15,0)],[(10,30),(16,30)],226.50 ).








































































