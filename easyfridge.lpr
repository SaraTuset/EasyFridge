program EasyFridge;

{$mode objfpc}{$H+}

uses
   SysUtils;

const
  MAX_PRODUCTS = 4;

type
  TInventario = array[1..MAX_PRODUCTS]  of String;

var
  inventario: TInventario;
  pos: Integer = 0;


procedure meterAlimento();
var
  nombre: String;

begin                                       //1
    if pos < MAX_PRODUCTS then                 //2
       begin                                      //3
         WriteLn('Añade las características de tu producto:');   //4
         Write(' -Nombre: ');                                       //5
         Readln(nombre);                                               //6
         inc(pos);                                                        //7
         inventario[pos] := nombre;       //8
       end                                  //9
    else                                      //10
        WriteLn('La nevera está llena.');         //11

end;                                            //12


procedure menu();
var
  opt: Integer;
begin                                              //13
    opt := 3;                                           //14
    while opt <> 0 do                                       //15
      begin                                                     //16
        Writeln('Opciones a hacer:');                               //17
        WriteLn(' 0_ Salir.');                                          //18
        WriteLn(' 1_ Comprar alimento.');                                   //19
        Write('Qué te apetece hacer: ');      //20
        readln(opt);                              //21

        if opt = 1 then                               //22
           meterAlimento()                              //23
        else                                                  //24
            WriteLn('Elige bien la opción (0 o 1).');             //25
      end;                                                            //26

end;                                    //27

begin                                       //28
  writeln('Bienvenido a EasyFridge');           //29
  menu();                                           //30
  WriteLn('Gracias por usar EasyFridge');               //31
  ReadLn;                                                   //32
end.

