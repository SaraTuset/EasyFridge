program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Inventory, ShoppingList, Consumption, Recipes, Notifications, uFridge, unit1;

type
  Tinventory = RECORD
    name: string;
    quantity: integer;
  end;

var
  arrInventory: Tinventory;

begin
  writeln('Bienvenido a EasyFridge');
  ShowInventory(arrInventory);
  GenerateShoppingList;
  RegisterConsumption;
  ShowAvailableRecipes;
  CheckExpiration;
end.

