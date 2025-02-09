unit uFridge;
//Logic layer
{$mode ObjFPC}{$H+}

interface

uses
  Inventory, ShoppingList; // , Consumption, Recipes, Notifications,;

var
  arrInventory: TarrInventory;
  myshoppingList: TShopingList;

PROCEDURE AddProduct(name: String; quantity: Integer);
PROCEDURE RemoveProduct(name: String);
PROCEDURE ShowMyInventory();
procedure ShowMyShoppingList();

implementation

PROCEDURE AddProduct(name: String; quantity: Integer);
begin
  AddProductToInventory(arrInventory,name,quantity);
end;

PROCEDURE RemoveProduct(name: String);
begin
  RemoveProductToInventory(arrInventory,name);
  AddToShoppingList(myshoppingList,name);
end;

PROCEDURE ShowMyInventory();
begin
  ShowInventory(arrInventory);
end;

procedure ShowMyShoppingList();
begin
  ShowShoppingList(myshoppingList);
end;

end.

