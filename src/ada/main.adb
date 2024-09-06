with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   procedure CPP_Function;
   pragma Import (C, CPP_Function, "cpp_function");
begin
   Put_Line ("Calling C++ function from Ada:");
   CPP_Function;
   Put_Line ("Back in Ada main");
end Main;