% Hechos y Relaciones
mutante(virginia).

sobreviviente(virginia).
sobreviviente(eric).
sobreviviente(timmy).
sobreviviente(kevin).

protagonista(eric).

edad(eric, 30).

posee(eric, hacha).
posee(eric, encendedor).

skill(kevin, cargar).
skill(kevin, construir).

cargar(kevin, troncos).

zona(superficie).
zona(cuevas).
zona(bunkeres).

enemigo(canibales, superficie).
enemigo(mutante, superficie).
enemigo(mutante, cuevas).

requiere(bunkeres, llaves).

nivel_peligro(cuevas, alto, indefinido).
nivel_peligro(superficie, medio, dia).
nivel_peligro(superficie, alto, noche).

material(tronco).
material(piedra).

encontrar_en(tronco, superficie).
encontrar_en(piedra, superficie).


%Reglas
%Encontrar enemigos segun la zona
zona_con_enemigos(Z):-
	enemigo(_, Z).

%Determinar las personas que no cuentan con armas
sin_arma(P):-
	sobreviviente(P),
	 \+ posee(P, _).

%Determinar los miembros utiles ya sea porque tiene skills o poseen armas
miembro_util(P):-
	posee(P, _);
skill(P, _).



