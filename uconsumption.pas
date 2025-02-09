unit uConsumption;

{$mode ObjFPC}{$H+}

interface
uses
  Classes, SysUtils, DateUtils;

type
  TConsumption = record
    name: String;
    date: String;
  end;

  TListConsumptions = Array [1..100] of TConsumption;

var
 itemCount: integer = 0;

  PROCEDURE SetConsumption(var list: TListConsumptions; recipe: String);
  PROCEDURE ShowConsuptions(var list: TListConsumptions);

implementation

PROCEDURE SetConsumption(var list: TListConsumptions; recipe: String);
begin
     Inc(itemCount);
     list[itemCount].name:=recipe;
     list[itemCount].date:=FormatDateTime('dd/mm/yyyy', Now);
end;

PROCEDURE ShowConsuptions(var list: TListConsumptions);
var
 i:Integer;
begin
     WriteLn('Mis comidas: ');
     for i:= 1 to itemCount do
         WriteLn(list[i].date,': ',list[i].name);
end;

end.

