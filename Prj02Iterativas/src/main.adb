with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   N : Integer;
   Res : Integer;

begin
   Put_Line("Bienvenido al segundo curso de ADA");

   -- El For en Ada se realiza de la siguiente manera:
   for I in 1..10 loop
      Put_Line(I'Image);
   end loop;

   -- El atributo succ da el siguiente numero al seleccionado y el pred da el
   -- anterior
   N := 10;
   Put_Line(N'Image);
   Put_Line(Integer'Succ(N)'Image);
   Put_Line(Integer'Pred(N)'Image);

   -- Ahora intentaremos que solo nos muestre los números pares con MOD
   for I in 1..10 loop
      if ((I mod 2) = 0) then
         Put_Line(I'Image);
         Put_Line("Es par");
      end if;
   end loop;

   -- Haremos el sumatorio de valores del 1 al 15
   Res := 0;
   for I in 1..15 loop
      Res := I + Res;
   end loop;
   Put_Line("La suma de los digitos del 1 al 15 es" & Res'Image);

   null;
end Main;
