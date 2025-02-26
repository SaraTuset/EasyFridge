unit uProducto;

{$mode ObjFPC}{$H+}

interface

uses
    SysUtils;

type
  TProducto = RECORD
    nombre: String;
    caducidad: TDateTime;
  end;

function getNombre(producto: TProducto): String;
function getCaducidad(producto: TProducto):TDateTime;
function setProducto(nombre: String; caducidad: TDateTime): TProducto;

implementation
function getNombre(producto: TProducto): String;
begin
  getNombre := producto.nombre;
end;

function getCaducidad(producto: TProducto):TDateTime;
begin
  getCaducidad := producto.caducidad;
end;

function setProducto(nombre: String; caducidad: TDateTime): TProducto;
begin
  setProducto.nombre := nombre;
  setProducto.caducidad:=caducidad;
end;

end.

