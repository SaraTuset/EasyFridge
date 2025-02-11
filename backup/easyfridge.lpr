program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  uFridge, SysUtils;

var
  fecha: TDateTime;


begin
  writeln('Bienvenido a EasyFridge');
  fecha := EncodeDate(2025, 2, 10);
  AddProduct('lentejas',3, fecha);
  ShowMyInventory();
  EatProduct('lentejas');
  ShowMyInventory();
  ShowMyShoppingList();
  ShowMyConsumptions();
  SendNotification(arr: TInventory);
  Readln;
  {Future operations:
  ShowAvailableRecipes;
  CheckExpiration;}
end.

