unit uFridge;
//Logic layer
{$mode ObjFPC}{$H+}

interface

uses
  uInventory, uShoppingList; // , Consumption, Recipes, Notifications,;

var
  arrInventory: TarrInventory;
  shoppingList: TShopingList;

PROCEDURE AddProduct(name: String; quantity: Integer);
PROCEDURE RemoveProduct(name: String);
PROCEDURE ShowMyInventory();
PROCEDURE ShowMyShoppingList();

implementation

PROCEDURE AddProduct(name: String; quantity: Integer);
begin
  AddProductToInventory(arrInventory,name,quantity);
end;

PROCEDURE RemoveProduct(name: String);
begin
  RemoveProductToInventory(arrInventory,name);
  AddToShoppingList(shoppingList,name);
end;

PROCEDURE ShowMyInventory();
begin
  ShowInventory(arrInventory);
end;

PROCEDURE ShowMyShoppingList();
begin
  ShowShoppingList(shoppingList);
end;

end.

