unit uInventory;


interface

uses uPila, uProducto, SysUtils, uNotifications;

type
  tInventory = tPila;

var
  caducados : tCaducados;

PROCEDURE inicializarInventario(var p: tPila);
PROCEDURE mostrarInventario(p: tPila);
procedure annadirProducto(var p: tPila);
procedure retirarProducto(var p: tPila);
PROCEDURE mostrarNotificaciones();

implementation

procedure annadirAInventario(var p: tPila; nombre: String; fecha: TDateTime);
var
  producto: TProducto;
begin
  producto := setProducto(nombre, fecha);
  push(p, producto);
  annadirCaducados(caducados, producto);
end;

procedure inicializarInventario(var p: tPila);
begin
  initialize(p);  //Ponemos a nil
  annadirAInventario(p, 'Leche', EncodeDate(2024, 2, 20));        //Vamos añadiendo los diferentes productos a la nevera
  annadirAInventario(p, 'Huevos', EncodeDate(2024, 2, 20));
  annadirAInventario(p, 'Mantequilla', EncodeDate(2024, 2, 20));
  annadirAInventario(p, 'Jamon', EncodeDate(2024, 2, 20));
end;

PROCEDURE mostrarInventario(p: tPila);   //No hacemos var porque sino perderíamos la pila
begin
  while not isEmpty(p) do  //Comprobamos que no esté vacía hasta que el puntero apunte a NIL
  begin
    writeln(getNombre(peek(p)));  // Muestra el elemento en la cima
    p := p^.ant;        // Avanza al siguiente nodo sin modificar la pila original
  end;
end;

procedure annadirProducto(var p: tPila);
var
  nombre, fecha: String;
begin
  Write('Producto a añadir: ');
  Readln(nombre);
  Write('Fecha de caducidad (dd/mm/yyyy): ');
  Readln(fecha);
  annadirAInventario(p, nombre, StrToDate(fecha));
end;

procedure retirarDeInventario(var p: tPila; nombre: String);
var
  aux: tPila;
begin
   initialize(aux);
   while not isEmpty(p) do
         begin
           if getNombre(peek(p)) <> nombre then
              begin
                push(aux, peek(p));
              end;
           pop(p);
         end;
   p:=aux;
end;

procedure retirarProducto(var p: tPila);
var
  nombre: String;
begin
  Write('Producto a retirar: ');
  Readln(nombre);
  retirarDeInventario(p, nombre);
  retirarDeCaducados(caducados, nombre);
  end;

PROCEDURE mostrarNotificaciones();
begin
  SendNotification(caducados);
end;

end.
