package body Geometria is

   function "*"(Left, Right : in Distancia) return Area is 
   begin
      return Area(Float(Left) * Float(Right));
   end;

end Geometria;
