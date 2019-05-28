esXadre(viotti, dini).
esXadre(casciati, viotti).
esXadre(dini, kala).
esXadre(casciati, karp).
esXadre(viotti, dendi).
esXadre(karp, mai).
esXadre(mai, kala).
esXadre(kala, dendi).
esXadre(dendi, casciati).

pareja(boquita, pasion).
pareja(grandeza, boquita).

sonDistintos(Persona1, Persona2):-
    Persona1 \= Persona2.

esHijo(Hijo, Padre) :-
    sonDistintos(Hijo, Padre),
    esXadre(Padre, Hijo).

esPareja(Persona1, Persona2) :-
    pareja(Persona1, Persona2).

esPareja(Persona1, Persona2) :-
    pareja(Persona2, Persona1).

esPareja(Persona1, Persona2) :-
    sonDistintos(Persona1, Persona2),
    esXadre(Persona1, Hijo),
    esXadre(Persona2, Hijo).

esHermane(Persona1, Persona2) :-
    sonDistintos(Persona1, Persona2),
    esXadre(Xadre, Persona1),
    esXadre(Xadre, Persona2).

esTio(Tio, Sobrino) :-
    sonDistintos(Tio, Sobrino),
    esXadre(PosibleHermano, Sobrino),
    esHermane(PosibleHermano, Tio).

esAbuelo(Abuelo, Nieto) :-
    sonDistintos(Abuelo, Nieto),
    esXadre(Abuelo, Persona),
    esXadre(Persona, Nieto).

esPrimo(Persona1, Persona2) :-
    sonDistintos(Persona1, Persona2),
    esXadre(PosibleHermano1, Persona1),
    esXadre(PosibleHermano2, Persona2),
    esHermane(PosibleHermano1, PosibleHermano2).

esNieto(Persona1, Persona2) :-
    esAbuelo(Persona2, Persona1).

%Recursividad para recorrer el arbol de ancestros.

esAncestro(Ancestro, Descendiente) :-
    esXadre(Ancestro, Descendiente).

esAncestro(Ancestro, Descendiente) :-
    esXadre(Ancestro, Persona),
    esAncestro(Persona, Descendiente).
