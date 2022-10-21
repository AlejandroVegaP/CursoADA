with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   --Se pueden crear funciones en el bloque declare de la siguiente forma:
   function Sumar(N1 : Integer; N2 : Integer) return Integer is
   begin
      return N1+N2;
   end Sumar;

   function Exponente(Base : Integer; Exp : Integer := 2) return Float is
      Resultado : Float;
   begin
      if (Exp = 0) then
         return 1.0;
      end if;

      if (Exp = 1) then
         return Float(Base);
      end if;

      Resultado := Float(Base);
      For I in 2..Exp loop
         Resultado := Resultado * Float(Base);
      end loop;

      if (Exp < 0) then
         return 1.0 / Resultado;
      end if;

      return Resultado;

   end Exponente;

   procedure Show_Float(Value : Float ) is
      use Ada.Float_Text_IO;
      use Ada.Text_IO;
   begin
      Ada.Float_Text_IO.Put(Value, Exp => 0, Fore => 0);
      Ada.Text_IO.Put_Line("");
   end Show_Float;

   -- Si lo decides, se puede cambiar el nombre del método con renames.
   -- Procedure Put_Line(Value : Float) renames Show_Float;

   procedure Swap_Integers(Param1 : in out Integer; Param2 : in out Integer) is
      Aux : Integer;
   begin
      Aux := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end Swap_Integers;

   -- Ejercicio 1: Realizar el procedimiento MayorMenor que reciba dos numeros
   -- y que devuelva dos variables una con el menor y otra con el mayor. Este
   -- procedimiento tiene 4 parámetros

   procedure Mayor_Menor(Num1 : in Integer; Num2 : in Integer; May : out Integer; Men : out Integer) is
   begin
      If (Num1 > Num2) then
         May := Num1;
         Men := Num2;
      else
         May := Num2;
         Men := Num1;
      end if;
   end Mayor_Menor;


   Primer_Valor : Integer;
   Segundo_Valor : Integer;
   Resultado : Integer;

   Res : Float;

   A : Integer := 10;
   B : Integer := 20;

   Numero_Mayor : Integer := 50;
   Numero_Menor : Integer := 25;
   MayorRes : Integer;
   MenorRes : Integer;
begin

   Primer_Valor := 6;
   Segundo_Valor := 9;
   -- Para invocar una función se hace de la siguiente forma. También se puede
   -- alterar el orden de los parametros si usamos N2 => Primer_Valor por ej.
   Resultado := Sumar(Primer_Valor, Segundo_Valor);
   Put_Line("La suma de" & Primer_Valor'Image & " y" & Segundo_Valor'Image &
            " es" & Resultado'Image);

   Res := Exponente(2);
   Show_Float(Res);

   Res := Exponente(2,3);
   Show_Float(Res);

   Put_Line("Antes: A" & A'Image & " y B:" & B'Image);
   Swap_Integers(A,B);
   Put_Line("Ahora: A" & A'Image & " y B:" & B'Image);

   Mayor_Menor(Numero_Mayor, Numero_Menor, May => MayorRes, Men => MenorRes);
   Put_Line("Mayor:" & MayorRes'Image & " Menor:" & MenorRes'Image);

   null;
end Main;
