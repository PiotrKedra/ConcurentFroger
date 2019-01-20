

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

    entry update_frog_position(x : integer; y : integer) when not busy is
    begin
        busy := true;
        x_frog := x;
        y_frog := y;
        release;
    end update_frog_position;

    -- release the update entry
    procedure release is
    begin
        busy := false;
    end release;

    -- just printing the map
    procedure show is
    begin
        -- update frog position first
        level_map(y_frog)(x_frog) := 'X';
        
        put_line("tutaj trzbe clearowac terminal");
        for i in level_map'range loop
            put_line(level_map(i));
        end loop;
        put_line(" ");

    end show;
    end GameMapT;

end gamemap;