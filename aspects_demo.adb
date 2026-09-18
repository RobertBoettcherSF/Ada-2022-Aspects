pragma Ada_2022;

package body Aspects_Demo is

   function Square (X : Integer) return Integer is
   begin
      return X * X;
   end Square;

   procedure Touch (X : in out Integer) is
   begin
      X := X + 1;
   end Touch;

   function Packed_Bytes (F : Flags) return Natural is
      N : Natural := 0;
   begin
      for B of F loop
         if B then
            N := N + 1;
         end if;
      end loop;
      return N;
   end Packed_Bytes;

end Aspects_Demo;
