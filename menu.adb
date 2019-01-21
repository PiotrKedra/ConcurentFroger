package body menu is


function show_menu return Integer is 
current_selection:Integer:=1;
keyCode : Character;
WasPressed : Boolean;    
no_exi:Boolean:=True;
    begin
        while no_exi loop
            put_line("MEnusik");
            Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
            if WasPressed then
                if "" & KeyCode ="w" then
                    current_selection:=current_selection-1;
                end if;
                if "" & KeyCode ="s" then
                    current_selection:=current_selection+1;
                end if;
                if "" & KeyCode ="f" then
                    no_exi:=False;
                end if;


            end if;
            WasPressed:=False;
            Put(ASCII.ESC & "[2J");    
            new_line;
            new_line;
            new_line;
            put_line("---------------------------");
            put_line("-------F-R-O-G-E-R---------");
            new_line;
            
            if current_selection=1 then
                put_line("  -->   S-T-A-R-T          ");
            else
                put_line("        S-T-A-R-T          ");
            end if;
            
            new_line;
            
            if current_selection=2 then
                put_line("  -->   S-C-O-R-E         "); 
                put_line("        T-A-B-L-E         "); 
            else
                put_line("        S-C-O-R-E         "); 
                put_line("        T-A-B-L-E         "); 
            end if;

            new_line;
            if current_selection=3 then
                put_line("  -->    E-X-I-T            ");
            else
                put_line("         E-X-I-T            ");
            end if;

            new_line;
            put_line("UP- w  DOWN- s   SELECT- f");
            put_line("--------------------------");
           
            delay(0.1);
        end loop;
        return current_selection;
    end;
end menu;