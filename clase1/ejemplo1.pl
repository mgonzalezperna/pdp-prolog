puntajeLiga(juventus, italia, 50).
puntajeLiga(ferro, argentina, 5).
puntajeLiga(psg, francia, 45).
puntajeLiga(boca, argentina, 10).

sePrepara(ferro, 30).
sePrepara(juventus, 100).
sePrepara(boca, 60).

juega(juventus, ronaldo).
juega(juventus, juan).
juega(juventus, paulo).

cotizacion(ronaldo, 10000).
cotizacion(juan, 2000).

horasRequeridas(italia, 40).
horasRequeridas(argentina, 20).

buenEquipo(Equipo) :-
    cotizacion(Jugador, Importe), 
    between(5000, 20000, Importe).

buenEquipo(Equipo) :-
    puntajeLiga(Equipo, _, Puntos),
    Puntos > 40.

buenEquipo(Equipo) :-
    sePrepara(Equipo, Horas),
    puntajeLiga(Equipo, Liga, _),
    horasRequeridas(Liga, Requeridas),
    Horas > Requeridas.

buenPartido(Equipo1, Equipo2) :-
    buenEquipo(Equipo1),
    buenEquipo(Equipo2),
    Equipo1 \= Equipo2.
