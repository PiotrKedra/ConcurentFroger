package body frogertask is
task body froger_task is
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

end froger_task;


end frogertask;