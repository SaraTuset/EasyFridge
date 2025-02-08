unit Inventory;

{$mode ObjFPC}{$H+}

interface


var arrInventory: array[1..100] of Tinventory;

  itemCount: integer = 0;

uses
  Classes, SysUtils;

PROCEDURE ShowInventory(InventoryList: TInventory);
PROCEDURE AddProduct(var InventoryList: TInventory; name: string; quantity: integer);
PROCEDURE RemoveProduct(name: string);

implementation

PROCEDURE ShowInventory(InventoryList: TInventory);
var i: integer;
begin
     writeln('Inventario actual:');
     for i := 1 to itemCount do
         writeln(InventoryList[i].name, ' - ', InventoryList[i].quantity);
end;

  procedure AddProduct(var InventoryList: TInventory; name: string; quantity: integer);
  begin
    inc(itemCount);
    InventoryList[itemCount].name := name;
    InventoryList[itemCount].quantity := quantity;
  end;

PROCEDURE RemoveProduct(var InventoryList: TInventory; name: string);
var i, j: integer;
begin
     for i := 1 to itemCount do
         if InventoryList[i].name = name then
         begin
              for j := i to itemCount - 1 do
              begin
                  InventoryList[j] := InventoryList[j + 1];
                  dec(itemCount);
                  break;
              end;
         end;
end;
end.




