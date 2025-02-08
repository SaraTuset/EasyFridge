program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Inventory, ShoppingList, Consumption, Recipes, Notifications, uFridge;

begin
  writeln('Bienvenido a EasyFridge');
  ShowInventory;
  GenerateShoppingList;
  RegisterConsumption;
  ShowAvailableRecipes;
  CheckExpiration;
end.

