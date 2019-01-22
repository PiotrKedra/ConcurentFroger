package body scoreboard is 

    procedure show_score_board is
    keyCode : Character;
    WasPressed : Boolean:=false;  
    begin
        Put(ASCII.ESC & "[2J");
        put_line("------------------------");
        put_line("-----R-E-S-O-U-L-T-S----");
        put_line("------H-I-S-T-O-R-Y-----");
        new_line;
        new_line;
        new_line;
        new_line;
        new_line;
        new_line;
        
        put_line("------------------------");
        put_line(" PRESS-ANY-KEY-TO-RETURN ");
        put_line("------------------------");
        
        while WasPressed=false loop
        Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
        end loop;
    end;


end scoreboard;