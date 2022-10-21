package IO is   
   function Get_NotEmpty_Line     
     (ErrorMessage :String := "Entrada Vacia. Vuelva a Ingresar") return String;
   
   function Try_Get_Integer
     (Integer_As_String : in String, Converted_Value : out Integer) return Boolean;
end IO;
