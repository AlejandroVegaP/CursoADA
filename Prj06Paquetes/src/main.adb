with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;

with IO; use IO;
with Constantes;

procedure Main is

begin
   --  Insert code here.
   Put_Line(Constantes.Titulo);
   Put_Line("Version" & Constantes.Version'Image);
   New_Line(2);
   Put_Line("Ingrese Su Nombre");
   declare
      Nombre : String := Get_NotEmpty_Line;
   begin
      Put_Line("Hola " & Nombre);
   end;

   Put_Line("Ingrese su edad");
   declare
      Edad : Integer;
   begin
      Get(Edad);
      Put_Line("Edad" & Edad'Image);

   null;
   end;

end Main;
