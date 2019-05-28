persona(pedro, uruguay).
persona(juan, finlandia).
persona(ana, finlandia).
persona(roberto, uruguay).
persona(viotti, argentinoPechoPeludo).

esRico(juan).
esRico(ana).

%definimos una primera condicion que determine el universo de predicados que vamos a recorrer.
esPobre(Alguien) :- persona(Alguien, _ ), not(esRico(Alguien)).

%esto no anda para casos genericos
%esPobre(Alguien) :- not(esRico(Alguien)).
%porque cualquier cosa que cayera adentro de ALGUIEN va a dar true si no esta en la base de conocimiento.

seErradicoLaPobreza :- not(esPobre(X)).

seErradicoLaPobrezaEnPais(Pais) :- persona( _, Pais ), not(existePobresEnPais(Pais)).
%persona( _, Pais ) aparece para asegurar que haya alguien en ese pais.

existePobresEnPais(Pais) :- persona(Alguien, Pais), esPobre(Alguien).


