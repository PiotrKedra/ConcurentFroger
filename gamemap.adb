

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

    -- release the update entry
    procedure release is
    begin
        busy := false;
    end release;

    -- just printing the map
    procedure show is
    begin
        put_line("tutaj trzbe clearowac terminal");
        for i in level_map'range loop
            put_line(level_map(i));
        end loop;
        put_line(" ");
    end show;
    end GameMapT;

end gamemap;