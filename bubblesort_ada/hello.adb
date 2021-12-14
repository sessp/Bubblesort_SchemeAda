with Ada.Text_IO; use Ada.Text_IO;

procedure Hello is
   type Special_Int is range -(2 ** 31) .. +(2 ** 31 - 1);
   temp : Special_Int;
   type Index is range 1 .. 7;
   type Array_To_Array is array (Index) of Special_Int;
   Sort : Array_To_Array;
begin
   --Get input for the array
   Put_Line("Please enter 7 numbers, 1 at a time, between -1,000,000 and 1,000,000");
   for L in Index loop
	Sort(L) := Special_Int'Value(Get_Line);
   end loop;
   --Print the unsorted array.
   for I in Index loop
      Put (Special_Int'Image (Sort (I)));
   end loop;
   New_Line;
   --Perform the actual sorting
   --Reference [2]
   for K in reverse Sort'Range loop
       for J in Sort'First .. K loop
          if Sort(K) < Sort(J) then
             temp := Sort(J);
             Sort(J) := Sort(K);
             Sort(K) := Temp;
          end if;
       end loop;
    end loop;
   New_Line;
   --Output the sorted array
   for I in Index loop
      Put (Special_Int'Image (Sort (I)));
   end loop;
   New_Line;
end Hello;