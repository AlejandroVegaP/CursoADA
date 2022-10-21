package fisica is

   type Distancia is new Float;
   type Velocidad is new Float;
   type Tiempo is new Float;
   type Aceleracion is new Float;
   
   function Posicion_Final(Pos_init : in Distancia; 
                           Vel_init : in Velocidad; 
                           T : in Tiempo; 
                           A : in Aceleracion) return Distancia;

end fisica;
