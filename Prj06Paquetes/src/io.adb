with Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Constantes;

package body io is   
   function Get_NotEmpty_Line (ErrorMessage :String := "Entrada Vacia. Vuelva a Ingresar") return String is      
      use Ada.Text_IO;   
   begin      
      loop
         declare
            Entrada : String := Get_Line;
         begin
            declare            
               Entrada_Sin_Espacios : String := Trim(Entrada, Both);         
            begin
               if (Entrada_Sin_Espacios'Length > 0) then 
                  return Entrada_Sin_Espacios; 
               end if;         
            end;
         end;    
         Put_Line(ErrorMessage);      
      end loop;   
   end Get_NotEmpty_Line;   
end IO;
