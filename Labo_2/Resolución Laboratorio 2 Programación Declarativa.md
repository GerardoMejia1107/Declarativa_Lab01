
### 1. Si la información no es completa para oferentes y demandantes, hay una falla de mercado.

| Sujeto         | Predicado                                   |
| -------------- | ------------------------------------------- |
| La información | no es completa para oferantes y demandantes |
```prolog
completa(informacion, oferantes).
completa(informacion, demandantes).

falla_mercado(X, Y):-
	\+ completa(informacion, X),
	\+ completa(informacion, Y).
```
### 2. He pasado todas mis vacaciones en Grecia y Marruecos

| Sujeto       | Predicado                                         |
| ------------ | ------------------------------------------------- |
| He (persona) | pasado todas mis vacaciones en Grecia y Marruecos |
```prolog
pais(grecia).
pais(marruecos).

%Sujeto es una persona, en este caso yo (gerardo) por ejemplo.
visitado(gerardo, grecia).
visitado(gerardo, marruecos).

vacacion_multidestino(A, B):-
	pais(A),
	pais(B),
	visitado(gerardo, A),
	visitado(gerardo, B).
```
### 3. La realidad supera a la ficción y él no puede creerlo

| Sujeto       | Predicado           |
| ------------ | ------------------- |
| realidad     | supera a la ficción |
| él (persona) | no puede creerlo    |
```prolog
supera(realidad, ficcion).

persona(gerardo).

no_puede_creer(P, H) :-
    persona(P),
    \+ cree(P, H).
```




