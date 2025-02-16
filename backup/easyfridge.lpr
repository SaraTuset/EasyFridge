program EasyFridge;

{$mode objfpc}{$H+}

uses
   SysUtils, uPila;

const
  MAX_PRODUCTS = 10;

type
  TInventario = array[1..MAX_PRODUCTS]  of String;

var
  inventario: TInventario;
  pos: Integer = 0;
  pila: tPila;


{procedure meterAlimento();
var
  nombre: String;

begin
    if pos < MAX_PRODUCTS then
       begin
         WriteLn('Añade las características de tu producto:');
         Write(' -Nombre: ');
         Readln(nombre);
         inc(pos);
         inventario[pos] := nombre;
       end
    else
        WriteLn('La nevera está llena.');

end;
  }
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
           inicializarInventario(pila);
           mostrarInventario(pila);
      end;

end;

begin
  writeln('Bienvenido a EasyFridge');
  menu();
  WriteLn('Gracias por usar EasyFridge');
  ReadLn;
end.

