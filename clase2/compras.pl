compra(Persona, Producto, Cantidad) :-
    dinero(Persona, Dinero),
    precio(Producto, Precio),
    Cantidad is Dinero/Precio,
    Dinero >= Precio. 

dinero(nicolas, 200).
dinero(javier, 1030).

precio(mouse, 400).
precio(cafe, 25).
precio(auriculares, 250).



profesion(juan, herrero).
profesion(ana, carpintero).
profesion(pedro, herrero).

tieneCuchillo(juan, palo).
tieneCuchillo(pedro, palo).
tieneCuchillo(ana, palo).

enCasaDeHerreroCuchilloDePalo :-
    forall(
        profesion(Fulano, herrero),
        tieneCuchillo(Fulano, palo)
    ).

enCasaDeHerreroCuchilloDePalo2 :-
    not((profesion(Fulano, herrero),
    not(tieneCuchillo(Fulano, palo)))
).

madruga(juan).
madruga(ana).
loAyuda(yaveh, juan).
loAyuda(ala, ana).

esDios(ala).
esDios(yaveh).

alQueMadrugaDiosLoAyuda :-
    forall(
        madruga(Fulano),
        (esDios(Ente),
        loAyuda(Ente, Fulano))
    ).

diosLeDaPan(dini).
diosLeDaPan(casciati).

tieneDientes(casciati).
tieneDientes(viotti).

diosLeDaPanAlQueNoTieneDientes :-
   forall(
        diosLeDaPan(Fulano),
        not(tieneDientes(Fulano))
   ). 
