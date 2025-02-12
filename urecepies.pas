unit uRecepies;

interface

uses
  Classes, SysUtils, uInventory;

const
  MAX_RECEPIES = 50;

type
  TRecepy = RECORD
    name: String;
    ingredients: SET of String;
  end;

  TarrRecipies =  Array [1..MAX_RECEPIES] of TRecepy;
  TNames =  RECORD
    endPoint: Integer;
    list: Array [1..MAX_RECEPIES] of String
  end;

  FUNCTION AvailableRecipies(inventory: TarrInventory; recepies: TarrRecipies): TNames;

implementation

FUNCTION AvailableRecipies(inventory: TarrInventory; recepies: TarrRecipies): TNames;
var
  i: Integer;
  auxSet : Set of String;
  auxList: TNames;
begin
  if itemCount > 0:
    begin
      aux := []
      for i:= 1 to itemCount do
           aux := aux + [inventory[i]]

      for i:= 1 to MAX_RECEPIES do
           if recepies[i].ingredients <= aux then
              begin
                auxList.list[auxList.endPoint] := recepies[i].name;
                auxList.endPoint += 1;
              end;
    end;

end;


end.

