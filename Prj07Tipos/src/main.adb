with Ada.Text_IO; use Ada.Text_IO;
with Geometria; use Geometria;

procedure Main is

   -- type Cantidad is new Integer;
   -- type Cantidad is new Natural;
   -- type Cantidad is range 0..Integer'Max;
   type Cantidad is range 0..2**63-1; -- uso 64 bits

   -- type Cantidad_Peras is new Cantidad;
   -- type Cantidad_Manzanas is new Cantidad;

   subtype Cantidad_Peras is Cantidad;
   subtype Cantidad_Manzanas is Cantidad;

   Peras : Cantidad_Peras;
   Manzanas: Cantidad_Manzanas;
   Frutas : Cantidad;
   -- Total : Integer;

begin

   Peras := 2;
   Manzanas := 4;

   -- Peras := Manzanas; < En cualquier otro lenguaje esto sería válido ya que son integers

   Frutas := Peras + Manzanas; -- Esta es una asignación valida y semanticamente correcta
   -- Total := Peras + Manzanas; < Esto no sería una asignación válida.

   Put_Line("En total tengo" & Frutas'Image & " frutas");

   Frutas := 300;
   Frutas := Frutas + 50; -- Falla en tiempo de ejecución si el tipo de cantidad es un range de 0..300
   Frutas := 3**3; -- Esto es un operador exponente

   declare
      type Mi_Tipo is new Integer; -- Se pueden declarar tipos en el bloque declare.
      Variable : Mi_Tipo;
   begin
      Variable := 3;
   end;

   -----------------------------------------------------------------------------------------------------
   declare
      -- type Distancia is new Float;
      -- type Area is new Float;

      Base : Distancia;
      Altura : Distancia;
      Superficie : Area;

      procedure Procedure_En_Declare is
      begin
         null;
      end;

      -- Nos llevaremos esta función al paquete geometria
      -- function "*"(Left : in Distancia, Right : in Distancia) return Area is
      -- begin
      --   return Area(Float(Left) * Float(Right));
      -- end;


   begin
      Base := 10.0;
      Altura := 10.0;
      -- Superficie := Base * Altura; < No es una asignación válida a no ser que Area sea un Subtype de distancia
      -- Superficie := Area(Base * Altura);
      Superficie := Base * Altura; -- Ahora es válida después de crear la finción "*"
   end;


   declare
      Base : Distancia := 10.0;
      Altura : Distancia := 5.0;
      Area_Triangulo : Area;
   begin
      Area_Triangulo := (Base * Altura) / 2.0;

   end;

   -- Enumerados en ADA
   declare
      type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
      Type Meses is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);

      Primer_Dia_Semana : Dias;
   begin

      Primer_Dia_Semana := Lunes;
      for Dia in Dias loop
         Put_Line("Hoy es" & Dia'Image);
         case Dia is
            when Lunes =>
               Put_Line("Feliz comienzo de semana");
            when Sabado..Domingo =>
               Put_Line("Feliz fin de semana");
            when Martes..Viernes =>
               Put_Line("A tope");
         end case;
      end loop;
   end;

   -- Tipos de datos modulares
   declare

      type Max_1000 is mod 1000;
      Numero : Max_1000;

   begin

      Numero := 500;
      Put_Line("Vale" & Numero'Image);
      Numero := Numero + 400;
      Put_Line("Ahora vale" & Numero'Image);
      Numero := Numero + 102;
      Put_Line("Ahora vale" & Numero'Image);


   end;


   null;
end Main;
