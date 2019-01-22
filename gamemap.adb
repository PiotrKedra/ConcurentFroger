

package body gamemap is
    ---------------------
    --GAMEMAP BODY
    ----------------------
    protected body GameMapT is

    --update with barrier (busy) 
    entry update(y: integer; level: String) when not busy is
    begin
        busy := true;
        level_map(y) := level;
        release;
    end update;

    procedure update_frog_position(x : integer; y : integer) is
    begin
        level_map(y_frog)(x_frog) := '-';
        x_frog := x;
        y_frog := y;
    end update_frog_position;

    procedure start_game(flag : boolean) is
    begin
        game_on := flag;
        game_on_inside_flag := false;
    end start_game;

    procedure set_exit_gamee(a: boolean) is
    begin
        exit_game := a;
    end set_exit_gamee;

    function exited return boolean is 
    begin
        return exit_game;
    end;

    procedure score_to_txt is
    Output, Read : File_Type;
    begin
        open (File => Output,
            Mode => Append_File,
            Name => "score.txt");
        Put_Line (Output, score'img);
        Close (Output);
    exception
    when End_Error =>
        if Is_Open(Output) then 
            Close (Output);
        end if;

    end score_to_txt;

    -- release the update entry
    procedure release is
    begin
        busy := false;
    end release;

    procedure add_score is
    begin
        score := score + 1;
    end add_score;

    -- just printing the map
    procedure show is
    keyCode : Character;
    WasPressed : Boolean;    
    begin
        exit_game:=false;
        if game_on = true then
            -- update frog position first
            level_map(y_frog)(x_frog) := 'X';
            Put(ASCII.ESC & "[2J");    
            put_line("################### wynik:" & score'img);

            for i in level_map'range loop
                for j in level_map(i)'range loop
                    game_window(i+1)(j+1) := level_map(i)(j);
                end loop;
            end loop;

            for i in game_window'range loop
                put_line(game_window(i));
            end loop;
            put_line(" ");
        elsif game_on = false then

      
            Put(ASCII.ESC & "[2J");    
            for i in integer range 1..9 loop
                for j in integer range 1..30 loop
                    game_window(i)(j) := '#';
                end loop;
            end loop;

            game_window(4)(9) := ' ';
            game_window(4)(10) := 'P';
            game_window(4)(11) := 'R';
            game_window(4)(12) := 'Z';
            game_window(4)(13) := 'E';
            game_window(4)(14) := 'G';
            game_window(4)(15) := 'R';
            game_window(4)(16) := 'A';
            game_window(4)(17) := 'L';
            game_window(4)(18) := 'E';
            game_window(4)(19) := 'S';
            game_window(4)(20) := ' ';
            game_window(4)(21) := ' ';



            game_window(7)(9) := ' ';
            game_window(7)(10) := 'T';
            game_window(7)(11) := 'O';
            game_window(7)(12) := ' ';
            game_window(7)(13) := 'M';
            game_window(7)(14) := 'E';
            game_window(7)(15) := 'N';
            game_window(7)(16) := 'U';
            game_window(7)(17) := ' ';
            game_window(7)(18) := 'I';
            game_window(7)(19) := 'N';
            game_window(7)(20) := ' ';
            game_window(7)(21) := '3';
            game_window(7)(22) := 's';
            game_window(7)(23) := ' ';

            for i in game_window'range loop
                put_line(game_window(i));

            end loop;
            delay(3.0);
            exit_game:=true;
            game_on:=true;
        
        end if;




    end show;
    end GameMapT;

end gamemap;