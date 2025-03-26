-- Taha Tavlan 221101062

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Calculator is

   function Evaluate(Expression : String) return Integer is
      A, B  : Integer;
      Op    : Character;
      Pos   : Natural;
   begin
      declare
         Clean_Expression : constant String := Trim(Expression, Ada.Strings.Both);
      begin
         Pos := Index(Clean_Expression, "+");
         if Pos = 0 then
            Pos := Index(Clean_Expression, "-");
         end if;
         if Pos = 0 then
            Pos := Index(Clean_Expression, "*");
         end if;
         if Pos = 0 then
            Pos := Index(Clean_Expression, "/");
         end if;

         if Pos = 0 or Pos = 1 or Pos = Clean_Expression'Length then
            raise Constraint_Error;
         end if;

         A := Integer'Value(Clean_Expression(1 .. Pos - 1));
         Op := Clean_Expression(Pos);
         B := Integer'Value(Clean_Expression(Pos + 1 .. Clean_Expression'Length));

         case Op is
            when '+' => return A + B;
            when '-' => return A - B;
            when '*' => return A * B;
            when '/' => return A / B;
            when others => raise Constraint_Error;
         end case;
      end;
   exception
      when others =>
         Put_Line("Error: Invalid expression");
         return 0;
   end Evaluate;

   Input : String(1 .. 100);
   Last  : Natural;
begin
   loop
      Put("> ");
      Get_Line(Input, Last);
      exit when Input(1 .. Last) = "exit";
      Put_Line("Result: " & Integer'Image(Evaluate(Input(1 .. Last))));
   end loop;
end Calculator;
