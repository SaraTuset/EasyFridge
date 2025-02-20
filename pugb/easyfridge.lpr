program EasyFridge;

{$mode objfpc}{$H+}

uses
   SysUtils, uInventory, uPila;

const
  MAX_PRODUCTS = 10;

var
  inventario: tPila;

procedure menu();
var
  opt: Integer;
begin
    opt := 3;
    while opt <> 0 do
      begin
        Writeln('Opciones a hacer:');
        WriteLn(' 0_ Salir.');
        WriteLn(' 1_ Mostrar inventario.');
        WriteLn(' 2_ Annadir a la nevera.');
        WriteLn(' 3_ Retirar alimento.');
        Write('Que te apetece hacer: ');
        readln(opt);

        case opt of
           1: mostrarInventario(inventario);
           2: WriteLn('No esta implementado aun.');
           3: WriteLn('No esta implementado aun.');
        end;
        WriteLn();
      end;

end;

begin
  inicializarInventario(inventario);
  writeln('Bienvenido a EasyFridge');
  menu();
  WriteLn('Gracias por usar EasyFridge');
  ReadLn;
end.

