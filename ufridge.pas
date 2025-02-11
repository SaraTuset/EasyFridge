unit uFridge;
//Logic layer
{$mode ObjFPC}{$H+}

interface

uses
  uInventory, uShoppingList, uConsumption, uNotifications; // , uConsumption, uRecipes, uNotifications,;

var
  arrInventory: TarrInventory;
  shoppingList: TShopingList;
  consuptionList: TListConsumptions;

PROCEDURE AddProduct(name: String; quantity: Integer; expiration_date: TDateTime);
PROCEDURE EatProduct(name: String);
PROCEDURE ShowMyInventory();    //Unify as ShowLists??
PROCEDURE ShowMyShoppingList();
PROCEDURE ShowMyConsumptions();

implementation

PROCEDURE AddProduct(name: String; quantity: Integer; expiration_date: TDateTime);
begin
  AddProductToInventory(arrInventory,name,quantity, expiration_date);
end;

PROCEDURE EatProduct(name: String);
begin
  RemoveProductToInventory(arrInventory,name);
  AddToShoppingList(shoppingList,name);
  SetConsumption(consuptionList, name);
end;

PROCEDURE ShowMyInventory();
begin
  ShowInventory(arrInventory);
end;

PROCEDURE ShowMyShoppingList();
begin
  ShowShoppingList(shoppingList);
end;

PROCEDURE ShowMyConsumptions();
begin
  ShowConsuptions(consuptionList);
end;

PROCEDURE SendNotification();
begin
  SendNotification(arrInventory);
end;

end.

