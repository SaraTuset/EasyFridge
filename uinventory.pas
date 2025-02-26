unit uInventory;


interface

uses uPila;

type
  tInventory = tPila;

PROCEDURE inicializarInventario(var p: tPila);
PROCEDURE mostrarInventario(p: tPila);
procedure annadirProducto(var p: tPila);
procedure retirarProducto(var p: tPila);

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

procedure annadirProducto(var p: tPila);
var
  nombre: String;
begin
  Write('Producto a añadir: ');
  Readln(nombre);
  push(p, nombre);
end;

procedure retirarDeInventario(var p: tPila; nombre: String);
var
  aux: tPila;
begin
   initialize(aux);
   while not isEmpty(p) do
         begin
           if peek(p) <> nombre then
              begin
                push(aux, peek(p));
              end;
           pop(p);
         end;
   p:=aux;
end;

procedure retirarProducto(var p: tPila);
var
  nombre: String;
begin
  Write('Producto a retirar: ');
  Readln(nombre);
  retirarDeInventario(p, nombre);
  end;

end.
