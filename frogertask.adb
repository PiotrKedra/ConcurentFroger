with Ada.Text_IO; use Ada.Text_IO;
with Frog;
use Frog;


task handleKeyStrokes;
    
    task body handleKeyStrokes is
        KeyCode : Character;
        WasPressed : Boolean;
        jumper:frogy;
    begin
        
        while True loop
           
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                jumper.moveUp;


            end if;

        end loop;

end handleKeyStrokes;
