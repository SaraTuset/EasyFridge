unit ShoppingList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

Type
  TShopingList = array[1..100] of String;

var
 itemCount: integer = 0;

 procedure AddToShoppingList(var list: TShopingList; name: String);
 procedure DeleteShoppingList(var list: TShopingList);
 procedure ShowShoppingList(list: TShopingList);

implementation

procedure AddToShoppingList(var list: TShopingList; name: String);
begin
  inc(itemCount);
  list[itemCount] := name;
end;

procedure DeleteShoppingList(var list: TShopingList);
var
 aux : TShopingList;
begin
  list := aux;
  itemCount := 0;
end;

procedure ShowShoppingList(list: TShopingList);
var
 i: Integer;
begin
  WriteLn('Hay que comprar: ');
  for i:= 1 to itemCount do
      WriteLn('  - ', list[i]);
end;

end.

