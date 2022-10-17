with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- Usaremos esta librería para poder generar números aleatorios.
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   Sumatoria : Integer := 0;
   Entrada_Datos : Integer;
   Edad : Integer;
begin

   --Haremos que calcule la sumatoria de valores hasta que se ingrese un 0
   Put_Line("Ingrese valores para realizar una sumatoria. Ingrese un 0 para finalizar");

   loop
      Get(Entrada_Datos);
      exit when(Entrada_Datos = 0);
      Sumatoria := Sumatoria + Entrada_Datos;
   end loop;

   Put_Line("La sumatoria de los valores es " & Sumatoria'Image);

   --Haremos el mismo procedimiento con el while
   Sumatoria := 0;

   Put_Line("Ingrese valores para realizar una sumatoria. Ingrese un 0 para finalizar");

   Get(Entrada_Datos);

   while Entrada_Datos /= 0 loop
      Sumatoria := Sumatoria + Entrada_Datos;
      Get(Entrada_Datos);
   end loop;

   Put_Line("La sumatoria de los valores es " & Sumatoria'Image);

   -- Haremos un ejercicio de edades con un switch
   Put_Line("Ingrese su edad");

   Get(Edad);

   case Edad is
      when 0|1|2 => Put_Line("Es un recién nacido");
      when 3..9 => Put_Line ("Es un infante");
      when 10..18 => Put_Line("Es un adolescente");
      when 19..49 => Put_Line("Es un adulto");
      when 50 => Put_Line("Crisis de mediana edad");
      when others => Put_Line("Mayor de 50 años");
   end case;

   -- Introduciendo a los string
   declare
      S : String (1..7); --Forma explícita de definir un string
      Nombre : String := Get_Line; --Forma implícita de definir un string
   begin
      S := "Esteban";
      Put_Line(S);
   end;


   -- Ejercicio 1: Un programa que pregunte valores positivos hasta que se ingrese un 0
   -- Utilizar un bloque declare. El programa mostrará el máximo ingresado.

   declare
      Max : Integer := 0;
      Num : Integer;
   begin
      Put_Line("Ingrese valores. Ingrese un 0 para finalizar");
      loop
         Get(Num);
         if Num > Max then
            Max := Num;
         end if;
         exit when(Num = 0);
      end loop;

      Put_Line("El valor más alto ingresado es " & Max'Image);
   end;

   -- Se puede introducir funciones como el if dentro del put_line
   declare
      Edad : Integer;
   begin
      Get(Edad);
      Put_Line(if (Edad >= 18) then "Es mayor" else "Es menor");
   end;

   -- Ejercicio 2: Un programa en el que se ingresen números. El programa debe
   -- calcular el total de números ingresados, cantidad de num pares y cantidad
   -- impares.
   declare
      Num : Integer;
      NumTot : Integer := 0;
      ParTot : Integer := 0;
      ImparTot : Integer := 0;
   begin
      Put_Line("Ingrese valores. Ingrese un 0 para finalizar");
      loop
         Get(Num);
         exit when(Num = 0);
         NumTot := NumTot + 1;
         ParTot := ParTot + (if (Num mod 2 = 0) then 1 else 0);
         ImparTot := ImparTot + (if (Num mod 2 = 0) then 1 else 0);
      end loop;

      Put_Line("El total de numeros es " & NumTot'Image & "De los cuales hay " & ParTot'Image
              & " pares y " & ImparTot'Image & " numeros impares");
   end;

   declare
      G : Generator;
      Numero_Aleatorio : Uniformly_Distributed;
   begin
      -- Generación de números aleatorios.

      Reset(G); --Usamos esto para resetear la semilla para que al reiniciar el
      --programa, nos de valores distintos.
      for I in 1..10 loop
         Numero_Aleatorio := Random(G);
         Put(Numero_Aleatorio, 0, 0, 0);
         Put_Line("");
      end loop;
   end;

   -- Generador de números aleatories entre el 1 y el 10
   declare
      G : Generator;
      Numero_Aleatorio : Integer;
   begin
      Reset(G);
      for I in 1..20 loop
         Numero_Aleatorio := Integer(Random(G) * 9.0) + 1;
         Put_Line(Numero_Aleatorio'Image);
      end loop;
   end;

end Main;
