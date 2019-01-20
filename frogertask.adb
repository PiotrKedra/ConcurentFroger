package body frogertask is
task body froger_task is
        KeyCode : Character;
        WasPressed : Boolean;
        jumper:frog_access;
    begin
        
        accept set_frog(frog_in:frog_access) do 
        jumper:=frog_in;
        while True loop
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
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
            
        end loop;
    end set_frog;
end froger_task;


end frogertask;