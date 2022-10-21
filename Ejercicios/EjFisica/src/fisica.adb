package body fisica is

   --               ( Xf = X0 + Vinicial * t + 1/2 * a * t² )
   
   function Posicion_Final(Pos_init : in Distancia; 
                           Vel_init : in Velocidad; 
                           T : in Tiempo; 
                           A : in Aceleracion) return Distancia is
   begin
      return Distancia( Float(Pos_init) + Float(Vel_init) * Float(T) + 0.5 * Float(A) * Float(T)**2);
   end Posicion_Final;
   

end fisica;
