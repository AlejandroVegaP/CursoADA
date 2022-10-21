with fisica; use fisica;
with Text_IO; use Text_IO;

procedure Main is
   -- Crear una librer�a que se llame f�sica
   -- Definir los siguientes tipos de datos
   --    Distancia
   --    Velocidad
   --    Tiempo
   --    Aceleraci�n
   -- Crear un m�todo para calcular la posici�n de un coche despu�s de x tiempo
   --               ( Xf = X0 + Vinicial * t + 1/2 * a * t� )
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
