with fisica; use fisica;
with Text_IO; use Text_IO;

procedure Main is
   -- Crear una librería que se llame física
   -- Definir los siguientes tipos de datos
   --    Distancia
   --    Velocidad
   --    Tiempo
   --    Aceleración
   -- Crear un método para calcular la posición de un coche después de x tiempo
   --               ( Xf = X0 + Vinicial * t + 1/2 * a * t² )
   --
   -- Function Posicion_Final(Distancia, Velocidad_Inicial, Tiempo_Transcurrido) returns Distancia

   Pos_Final : Distancia;
   Xinit : Distancia := 0.0;
   Vel : Velocidad := 70.0;
   Tiem : Tiempo := 60.0;
   Acel : Aceleracion := 9.8;


begin
   Pos_Final := Posicion_Final(Xinit, Vel, Tiem, Acel);
   Put_Line("La posicion final es" & Pos_Final'Image);


   null;
end Main;
