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
  EatProduct('lentejas');
  ShowMyInventory();
  ShowMyShoppingList();
  ShowMyConsumptions();
  Readln;
  {Future operations:
  ShowAvailableRecipes;
  CheckExpiration;}
end.

