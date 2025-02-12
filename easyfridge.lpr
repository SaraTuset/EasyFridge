program EasyFridge;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  uFridge, SysUtils;

var
  fecha: TDateTime;

procedure comerAlimento();
var
  producto: String;
begin
    ShowMyInventory();
    Write('Producto a comer: ');
    ReadLn(producto);
    EatProduct(producto);
end;

procedure comprarAlimento();
var
  nombre: String;
  cantidad: Integer;
  fecha: TDate;
  aux: String;
begin
    WriteLn('Añade las características de tu producto:');
    Write(' -Nombre: ');
    Readln(nombre);
    Write(' -Cantidad: ');
    Readln(aux);
    cantidad := StrToInt(aux);
    Write(' -Fecha: ');
    Readln(aux);
    fecha := StrToDate(aux);
    AddProduct(nombre, cantidad, fecha);
end;

procedure menu();
var
  opt: Integer;
begin
    opt := 3;
    while opt <> 0 do
      begin
        Writeln('Opciones a hacer:');
        WriteLn(' 0_ Salir.');
        WriteLn(' 1_ Comprar alimento.');
        WriteLn(' 2_ Comer Alimento.');
        Write('Qué te apetece hacer: ');
        readln(opt);

        if opt = 1 then
           comprarAlimento()
        else if opt = 2 then
           comerAlimento()
        else
            WriteLn('Elige bien la opción (0, 1 o 2).');
      end;

end;

begin
  writeln('Bienvenido a EasyFridge');
  menu();
  WriteLn('Gracias por usar EasyFridge');
  ReadLn;
end.

