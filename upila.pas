unit uPila;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  tNodo = record
    info: string;
    ant: ^tNodo;
  end;

  tPila = ^tNodo;

PROCEDURE initialize(var p: tPila);
PROCEDURE push(var p: tPila; x: string);
PROCEDURE pop(var p: tPila);
FUNCTION peek(p: tPila): string;
FUNCTION isEmpty(p: tPila): boolean;
PROCEDURE inicializarInventario(var p: tPila);
PROCEDURE mostrarInventario(p: tPila);


implementation

PROCEDURE initialize(var p: tPila);
begin
  p := NIL;

end;



PROCEDURE push(var p: tPila; x: string);
var
  nuevo: ^tNodo;
begin
  new(nuevo);
  nuevo^.info := x;
  nuevo^.ant := p;
  p := nuevo;
end;

PROCEDURE pop(var p: tPila);
var
  aux:^tNodo;
begin
  if not isEmpty(p) then
  begin
    aux:= p;
    p:= p^.ant;
    dispose(aux);
  end;
end;

FUNCTION peek(p: tPila): string;
begin
  if not isEmpty(p) then
     peek := p^.info;
end;

FUNCTION isEmpty(p: tPila): boolean;
begin
  isEmpty := p = NIL;
end;

procedure inicializarInventario(var p: tPila);
begin
  initialize(p);  //Ponemos a nil
  push(p, 'Leche');        //Vamos añadiendo los diferentes productos a la nevera
  push(p, 'Huevos');
  push(p, 'Mantequilla');
  push(p, 'Queso');
  push(p, 'Jamon');
end;

PROCEDURE mostrarInventario(p: tPila);
begin
  while not isEmpty(p) do
  begin
    writeln(peek(p));  // Muestra el elemento en la cima
    p := p^.ant;        // Avanza al siguiente nodo sin modificar la pila original
  end;
end;

end.

