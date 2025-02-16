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
        Write('Que te apetece hacer: ');
        readln(opt);

        if opt = 1 then
           mostrarInventario(inventario);
      end;

end;

begin
  inicializarInventario(inventario);
  writeln('Bienvenido a EasyFridge');
  menu();
  WriteLn('Gracias por usar EasyFridge');
  ReadLn;
end.

