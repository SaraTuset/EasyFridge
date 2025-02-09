program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Inventory; // ShoppingList, Consumption, Recipes, Notifications,

var
  arrInventory: TarrInventory;

begin
  writeln('Bienvenido a EasyFridge');
  AddProduct(arrInventory,'lentejas',3);
  ShowInventory(arrInventory);
  Readln;
  {Future operations:
  GenerateShoppingList;
  RegisterConsumption;
  ShowAvailableRecipes;
  CheckExpiration;}
end.

