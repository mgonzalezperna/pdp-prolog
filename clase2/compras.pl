compras(Persona, Producto) :-
    dinero(Persona, Dinero),
    precio(Producto, Precio),
    Dinero >= Precio, 
    Cantidad = Dinero/Precio.

dinero(nicolas, 200).
dinero(javier, 1030).
precio(mouse, 400).


