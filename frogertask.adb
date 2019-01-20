package body frogertask is
task body froger_task is
        KeyCode : Character;
        WasPressed : Boolean;
        jumper:frogy;
    begin
        
        while True loop
           
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                if "" & KeyCode ="w" then
                    jumper.moveUp;
                end if;
                if "" & KeyCode ="s" then
                   -- jumper.moveDown;
                end if;

                if "" & KeyCode ="a" then
                    jumper.moveLeft;
                end if;

                if "" & KeyCode ="d" then
                    jumper.moveRight;
                end if;


            end if;

        end loop;

end froger_task;


end frogertask;