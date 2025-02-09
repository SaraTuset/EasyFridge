unit uShoppingList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

Type
  TShopingList = array[1..100] of String;

var
 itemCount: integer = 0;

 PROCEDURE AddToShoppingList(var list: TShopingList; name: String);
 PROCEDURE DeleteShoppingList(var list: TShopingList);
 PROCEDURE ShowShoppingList(list: TShopingList);

implementation

PROCEDURE AddToShoppingList(var list: TShopingList; name: String);
begin
  inc(itemCount);
  list[itemCount] := name;
end;

PROCEDURE DeleteShoppingList(var list: TShopingList);
var
 aux : TShopingList;
begin
  list := aux;
  itemCount := 0;
end;

PROCEDURE ShowShoppingList(list: TShopingList);
var
 i: Integer;
begin
  WriteLn('Hay que comprar: ');
  for i:= 1 to itemCount do
      WriteLn('  - ', list[i]);
end;

end.

