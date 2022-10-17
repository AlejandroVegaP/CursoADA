with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   G : Generator;
   Numero_Aleatorio : Integer;
   Respuesta : Integer;
   Intentos : Integer := 5;
   Correcto : Boolean := False;
begin
   -- El programa decidir� un n�mero aleatorio entre 1 y 100
   -- El programa dar� 5 oportunidades para adivinar.
   -- Por cada intento el programa dar� una pista diciendo si el n�mero es > o <
   -- Si no se logra adivinar, se pierde.

   -- Generaci�n de n�mero aleatorio
   Reset(G);
   Numero_Aleatorio := Integer(Random(G) * 99.0) + 1;

   Put_Line("Se ha generado un n�mero del 1 al 100. Introduzca su respuesta. Tiene 5 intentos.");
   while (Intentos > 0) and (Correcto = False) loop
      Get(Respuesta);
      if (Respuesta = Numero_Aleatorio) then
         Put_Line("Acertaste. Has ganado *musiquita de victoria*");
         Correcto := True;
      else
         if (Respuesta > Numero_Aleatorio) then
            Put_Line("Incorrecto. El n�mero es inferior a tu respuesta");
            Intentos := Intentos - 1;
         else
            Put_Line("Incorrecto. El n�mero es superior a tu respuesta");
            Intentos := Intentos - 1;
         end if;
      end if;
   end loop;

   if (Correcto = False) then
      Put_Line("Has perdido. El n�mero era " & Numero_Aleatorio'Image);
   end if;

   null;

end Main;
