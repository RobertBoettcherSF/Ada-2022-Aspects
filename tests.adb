pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Aspects_Demo; use Aspects_Demo;

procedure Tests is
   F : constant Flags := [True, False, True, True, False, False, False, True];
   S : Status;
   X : Integer := 3;
begin
   Assert (Byte'Size = 8);
   Put_Line ("PASS Size aspect on Byte");

   Assert (Packed_Bytes (F) = 4);
   Put_Line ("PASS Pack array usage");

   Assert (S = Off);  -- Default_Value
   S := Ready;
   Assert (Is_Operational (S));
   S := Fault;
   Assert (not Is_Operational (S));
   Put_Line ("PASS Default_Value + Static_Predicate");

   Assert (Square (X) = 9);
   Touch (X);
   Assert (X = 4);
   Put_Line ("PASS Inline subprograms");

   Put_Line ("All Aspects topic tests passed.");
end Tests;
