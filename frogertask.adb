with Ada.Text_IO; use Ada.Text_IO;

procedure frogerTask is 

    task handleKeyStrokes;

    task body handleKeyStrokes is
        KeyCode : Character;
        WasPressed : Boolean;
 
    begin
        
        while True loop
           
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                put_line("Fuck Ada -:");
            end if;

        end loop;

    end handleKeyStrokes;
begin
    put_line("start");

end frogerTask;