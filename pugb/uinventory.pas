unit uInventory;


interface

uses uPila;

PROCEDURE inicializarInventario(var p: tPila);
PROCEDURE mostrarInventario(p: tPila);

implementation

procedure inicializarInventario(var p: tPila);
begin
  initialize(p);  //Ponemos a nil
  push(p, 'Leche');        //Vamos añadiendo los diferentes productos a la nevera
  push(p, 'Huevos');
  push(p, 'Mantequilla');
  push(p, 'Jamon');
end;

PROCEDURE mostrarInventario(p: tPila);   //No hacemos var porque sino perderíamos la pila
begin
  while not isEmpty(p) do  //Comprobamos que no esté vacía hasta que el puntero apunte a NIL
  begin
    writeln(peek(p));  // Muestra el elemento en la cima
    p := p^.ant;        // Avanza al siguiente nodo sin modificar la pila original
  end;
end;

end.
