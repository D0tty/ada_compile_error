with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Main is

   package Integer_Vectors is new Ada.Containers.Vectors (Positive, Integer);

   type Integer_Vector is new Integer_Vectors.Vector with null record;

   VEC : Integer_Vector;
begin
   VEC.Append (0);

   --  there is no trace of for ID of EXPR loop
   --  https://www.adaic.com/resources/
   --  add_content/standards/05rm/html/RM-5-5.html#S0144
   for PLACE_ONE of VEC loop
      declare
         I : constant Integer := 111;
      begin
         Put_Line (I'Image);
      end;
   end loop;
   for PLACE_TWO in 1 .. 1 loop
      declare
         Dummy_I : constant Integer := 222;
      begin
         Put_Line (Dummy_I'Image);
      end;
   end loop;
end Main;
