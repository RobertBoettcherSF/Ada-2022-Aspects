--  Ada 2022 topic: common aspects (beyond the Pre/Post contracts sheet).
pragma Ada_2022;

package Aspects_Demo is

   type Byte is mod 2 ** 8
     with Size => 8;

   type Flags is array (1 .. 8) of Boolean
     with Pack;

   type Status is (Off, Warm, Ready, Fault)
     with Default_Value => Off;

   subtype Warm_Or_Ready is Status
     with Static_Predicate => Warm_Or_Ready in Warm | Ready;

   function Square (X : Integer) return Integer
     with Inline;

   procedure Touch (X : in out Integer)
     with Inline;

   function Is_Operational (S : Status) return Boolean is
     (S in Warm_Or_Ready);

   function Packed_Bytes (F : Flags) return Natural;
   --  Count True flags (teaches Pack array as a normal Boolean array).

end Aspects_Demo;
