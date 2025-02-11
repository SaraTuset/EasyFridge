unit uNotifications;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uInventory;

PROCEDURE SendNotification(arr: TarrInventory);

implementation

PROCEDURE SendNotification(arr: TarrInventory);
var
  i: Integer;
  today: TDateTime;
begin
  today := Now;
  for i := 1 to 100 do
  begin
    if Trunc(arr[i].expiration_date) <= Trunc(today) then
      if arr[i].name <> '' then
         WriteLn('ATENCIÓN: El producto "', arr[i].name, '" ha expirado o está a punto de expirar!');
  end;
end;

end.

