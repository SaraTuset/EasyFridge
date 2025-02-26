unit uNotifications;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uCola;

Type
  tCaducados = TCola;

PROCEDURE SendNotification(caducados: tCaducados);
PROCEDURE annadirCaducado(var caducados: tCaducados);

implementation

PROCEDURE SendNotification(caducados: tCaducados);
var
  i: Integer;
  today: TDateTime;
begin
  today := Now;
  while not empty_queue(caducados) do
  begin
    if Trunc(arr[i].expiration_date) <= Trunc(today) then
         WriteLn('ATENCIÓN: El producto "', arr[i].name, '" ha expirado o está a punto de expirar!');
  end;
end;

end.

