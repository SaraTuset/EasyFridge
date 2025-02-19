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

end.

