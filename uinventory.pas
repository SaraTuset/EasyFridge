unit uInventory;


interface

uses uPila, uProducto, SysUtils;

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
  push(p, setProducto('Leche', EncodeDate(2024, 2, 20)));        //Vamos añadiendo los diferentes productos a la nevera
  push(p, setProducto('Huevos', EncodeDate(2024, 2, 20)));
  push(p, setProducto('Mantequilla', EncodeDate(2024, 2, 20)));
  push(p, setProducto('Jamon', EncodeDate(2024, 2, 20)));
end;

PROCEDURE mostrarInventario(p: tPila);   //No hacemos var porque sino perderíamos la pila
begin
  while not isEmpty(p) do  //Comprobamos que no esté vacía hasta que el puntero apunte a NIL
  begin
    writeln(getNombre(peek(p)));  // Muestra el elemento en la cima
    p := p^.ant;        // Avanza al siguiente nodo sin modificar la pila original
  end;
end;

procedure annadirProducto(var p: tPila);
var
  nombre, fecha: String;
begin
  Write('Producto a añadir: ');
  Readln(nombre);
  Write('Fecha de caducidad (dd/mm/yyyy): ');
  Readln(fecha);
  push(p, setProducto(nombre, StrToDate(fecha)));
end;

procedure retirarDeInventario(var p: tPila; nombre: String);
var
  aux: tPila;
begin
   initialize(aux);
   while not isEmpty(p) do
         begin
           if getNombre(peek(p)) <> nombre then
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
