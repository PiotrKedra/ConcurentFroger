package body frogertask is
task body froger_task is
        KeyCode : Character;
        WasPressed : Boolean;
        jumper:frog_access;
        du_pa_no:Boolean:=True;
    begin
        loop 

        accept set_frog(frog_in:frog_access) do 
            jumper:=frog_in;
            put_line("Wating for frog");
            du_pa_no:=True;
        end set_frog;
        
        while du_pa_no loop
            select 
            accept end_frog_move do 
                du_pa_no:=False;
            end end_frog_move;
            else 
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                --put_line("Pressed");
                if "" & KeyCode ="w" then
                    jumper.moveUp;
                elsif "" & KeyCode ="a" then
                    jumper.moveLeft;
                elsif "" & KeyCode ="d" then
                    jumper.moveRight;
                end if;
            end if;
            WasPressed:=False;
            end select;
        end loop;
    end loop;
end froger_task;


end frogertask;