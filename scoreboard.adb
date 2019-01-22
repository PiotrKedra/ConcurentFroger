package body scoreboard is 

    procedure show_score_board is
    keyCode : Character;
    WasPressed : Boolean:=false;  
    Input : File_Type;
    begin
        Put(ASCII.ESC & "[2J");
        put_line("------------------------");
        put_line("-----R-E-S-O-U-L-T-S----");
        put_line("------H-I-S-T-O-R-Y-----");

        Open (File => Input,
            Mode => In_File,
            Name => "score.txt");
        
        loop
            declare
                Line : String := Get_Line (Input);
            begin
                -- You can process the contents of Line here.
                Put_Line (" Score:" & Line);
            end;
        end loop;
        Close (Input);
        exception
            when End_Error =>
                if Is_Open(Input) then 
                    Close (Input);
                end if;
        
        put_line("------------------------");
        put_line(" PRESS-ANY-KEY-TO-RETURN ");
        put_line("------------------------");
        
        while WasPressed=false loop
        Ada.Text_IO.Get_Immediate (KeyCode, WasPressed);
        end loop;
    end;


end scoreboard;