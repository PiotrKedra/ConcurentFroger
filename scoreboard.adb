package body scoreboard is 

    procedure show_score_board is
    keyCode : Character;
    WasPressed : Boolean:=false;  
    begin
        Put(ASCII.ESC & "[2J");
        put_line("------------------------");
        put_line("--------H-I-G-H---------");
        put_line("------S-C-O-R-E-S-------");
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