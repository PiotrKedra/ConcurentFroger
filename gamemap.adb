

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
    begin
        -- update frog position first
        level_map(y_frog)(x_frog) := 'X';
        
        -- if score < 10 then
        --     game_window(3)(27) := (Integer'Image(score))'last;
        -- end if;

        put_line("tutaj trzbe clearowac terminal");
        for i in level_map'range loop
            for j in level_map(i)'range loop
                game_window(i+1)(j+1) := level_map(i)(j);
            end loop;
        end loop;

        for i in game_window'range loop
            put_line(game_window(i));
        end loop;
        put_line(" ");

    end show;
    end GameMapT;

end gamemap;