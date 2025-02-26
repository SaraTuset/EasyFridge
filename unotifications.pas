unit uNotifications;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uCola, uProducto;

Type
  tCaducados = TCola;

PROCEDURE SendNotification(var caducados: tCaducados);
PROCEDURE annadirCaducados(var caducados: tCaducados; producto: TProducto);
PROCEDURE retirarDeCaducados(var caducados: tCaducados; nombre: String);

implementation

PROCEDURE SendNotification(var caducados: tCaducados);
var
  aux: tCaducados;
begin
  initialize_queue(aux);
  while not empty_queue(caducados) do
  begin
         Write('ATENCION: El producto "');
         Write(getNombre(first(caducados)));
         Write('" ha expirado el ');
         Write(DateTimeToStr(getCaducidad(first(caducados))));
         WriteLn( '!');
         enqueue(aux, first(caducados));
         dequeue(caducados);
  end;
  caducados := aux;
end;

PROCEDURE annadirCaducados(var caducados: tCaducados; producto: TProducto);
var
  today: TDateTime;
begin
   today := Now;
   if Trunc(getCaducidad(producto)) <= Trunc(today) then
      enqueue(caducados, producto);
end;

PROCEDURE retirarDeCaducados(var caducados: tCaducados; nombre: String);
var
  aux: tCaducados;
begin
   initialize(aux);
   while not empty_queue(caducados) do
         begin
           if getNombre(first(caducados)) <> nombre then
              begin
                enqueue(aux, first(caducados));
              end;
           dequeue(caducados);
         end;
   caducados:=aux;
end;

end.

