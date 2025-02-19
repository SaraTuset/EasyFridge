program EasyFridge;

{$mode objfpc}{$H+}

uses
   SysUtils, uPila;

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
        WriteLn(' 2_ Añadir a la nevera.');
        WriteLn(' 3_ Retirar alimento.');
        WriteLn(' 4_ Ver lista de la compra');
        Write('Que te apetece hacer: ');
        readln(opt);

        case opt of
           1: mostrarInventario(inventario);
           2: WriteLn('No está implementado aún.');
           3: WriteLn('No está implementado aún.');
           4: WriteLn('No está implementado aún.');
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

