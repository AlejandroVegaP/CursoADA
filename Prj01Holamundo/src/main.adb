with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   -- Esta sección es un bloque de declaración. Por regla general se declaran
   -- las variables en este lugar.

   N : Integer;
   M : Integer;
   Edad: Integer;

begin
   -- Comenzamos por probar el comando para mostrar mensajes.
   Ada.Text_IO.Put_Line("Hola mundo Ada.");

   -- Añadimos el use Ada.Text_Io
   Put_Line("Con use Ada.Text_IO podemos omitir la llamada a la librería.");

   -- La función Put_Line() solo puede manejar Strings, para pasarle un integer
   -- debemos convertirlo a string con N'Image
   N := 10;
   Put_Line(N'Image);

   -- Se puede usar la función Put() de la librería Ada.Integer_Text_IO como
   -- método alternativo al N'Image. Se pueden acceder a los parametros con
   -- =>. En este caso, hacemos que el margen a la izquierda sea de 3 espacios
   -- para alinearlo con el N anterior.
   Put(N, Width => 0);

   -- Para introducir un número, se puede usar el metodo get().
   Put_Line("");
   Put_Line("Introduzca un número.");
   Get(M);
   Put(M, width => 0);
   Put_Line("");

   -- Ahora haremos un login dependiendo de la edad de la persona usando el if
   Put_Line("Introduzca la edad del usuario");
   Get(Edad);
   if Edad < 18 then
      Put_Line("La edad del usuario es "); Put(Edad); Put_Line(" y es menor de edad.");
   elsif Edad in 18..65 then
      Put_Line("La edad del usuario es "); Put(Edad); Put_Line(" y es un adulto.");
   elsif Edad > 65 then
      Put_Line("La edad del usuario es "); Put(Edad); Put_Line(" y es un jubilado.");
   end if;

   null;
end Main;
