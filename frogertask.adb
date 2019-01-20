package body frogertask is
task body froger_task is
        KeyCode : Character;
        WasPressed : Boolean;
        jumper:frog_access;
    begin
        
        accept set_frog(frog_in:frog_access) do 
            jumper:=frog_in;
            put_line("Wating for frog");
        end set_frog;
        
        while True loop
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                put_line("Pressed");
                if "" & KeyCode ="w" then
                    jumper.moveUp;
                end if;
        
                if "" & KeyCode ="a" then
                    jumper.moveLeft;
                end if;

                if "" & KeyCode ="d" then
                    jumper.moveRight;
                end if;

               
            end if;
            WasPressed:=False;
        end loop;
    
end froger_task;


end frogertask;