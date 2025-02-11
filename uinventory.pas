unit uInventory;

{$mode ObjFPC}{$H+}

interface
//Has the operations that used to had uFridge
uses
    SysUtils;

type
  Tinventory = RECORD
    name: string;
    quantity: integer;
    expiration_date: TDateTime;
  end;

 TarrInventory = array[1..100] of Tinventory;

 var
  itemCount: integer = 0;


PROCEDURE ShowInventory(InventoryList: TarrInventory);
PROCEDURE AddProductToInventory(var InventoryList: TarrInventory; name: string; quantity: integer; expiration_date: TDateTime);
PROCEDURE RemoveProductToInventory(var InventoryList: TarrInventory; name: string);

implementation

PROCEDURE ShowInventory(InventoryList: TarrInventory);
var i: integer;
begin
     if itemCount > 0 then
       begin
         writeln('Inventario actual:');
         for i := 1 to itemCount do
             writeln(InventoryList[i].name, ' - ', InventoryList[i].quantity,' - ', FormatDateTime('dd/mm/yyyy', InventoryList[i].expiration_date));
       end
     else
         WriteLn('El inventario está vacío.');
end;

  PROCEDURE AddProductToInventory(var InventoryList: TarrInventory; name: string; quantity: integer; expiration_date: TDateTime);
  begin
    inc(itemCount);
    InventoryList[itemCount].name := name;
    InventoryList[itemCount].quantity := quantity;
    InventoryList[itemCount].expiration_date := expiration_date;
  end;

PROCEDURE RemoveProductToInventory(var InventoryList: TarrInventory; name: string);
var i, j: integer;
begin
     for i := 1 to itemCount do
         if InventoryList[i].name = name then
         begin
              for j := i to itemCount - 1 do
              begin
                  InventoryList[j] := InventoryList[j + 1];
              end;
         end;
     dec(itemCount);
end;
end.




