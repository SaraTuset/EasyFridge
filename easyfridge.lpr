program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  uFridge;


begin
  writeln('Bienvenido a EasyFridge');
  AddProduct('lentejas',3);
  ShowMyInventory();
  RemoveProduct('lentejas');
  ShowMyInventory();
  ShowMyShoppingList();
  Readln;
  {Future operations:
  GenerateShoppingList;
  RegisterConsumption;
  ShowAvailableRecipes;
  CheckExpiration;}
end.

