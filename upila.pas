unit uPila;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uProducto ;

type
  tNodo = record
    info: TProducto;
    ant: ^tNodo;
  end;

  tPila = ^tNodo;

PROCEDURE initialize(var p: tPila);
PROCEDURE push(var p: tPila; x: TProducto);
PROCEDURE pop(var p: tPila);
FUNCTION peek(p: tPila): TProducto;
FUNCTION isEmpty(p: tPila): boolean;

implementation

PROCEDURE initialize(var p: tPila);
begin
  p := NIL;

end;



PROCEDURE push(var p: tPila; x: TProducto);
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

FUNCTION peek(p: tPila): TProducto;
begin
  if not isEmpty(p) then
     peek := p^.info;
end;

FUNCTION isEmpty(p: tPila): boolean;
begin
  isEmpty := p = NIL;
end;

end.

