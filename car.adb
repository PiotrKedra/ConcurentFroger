

package body car is
    ---------------------
    --Level BODY
    ----------------------
    task body Level is

        level_length : integer := 20;

        gameM : GameMapT_access;

        level_string : String(1 .. level_length) := (others => '-');

        positions : position_tab;
        old_positions : position_tab;
        y : integer;

        delay_value : Duration;
        move_value : integer;
        skin_print : character;   -- how it is shown

        begin
        accept set_gameMap(game: GameMapT_access) do
            gameM := game;
        end set_gameMap;
        -- wait for set_start_positon call
        accept set_start_position(start_positions: position_tab; y_cord: integer) do
            positions := start_positions;
            y := y_cord;
        end set_start_position;
        -- wait for set_values call
        accept set_values(delay_val: Duration; move_val: integer; right_directoin: boolean) do
            delay_value := delay_val;
            move_value := move_val;
            if right_directoin = true then
                skin_print := '>';
            else
                skin_print := '<';
            end if;
        end set_values;

        -- update position (imo we shoudl check colsion with frog here as well)
        loop
            select
            accept update_level_position do
                y := y + 1;
                if y > 7 then
                y := 1;
                end if;
            end update_level_position;
            or
            delay delay_value;

            old_positions := positions;

            for i in old_positions'range loop
                level_string(positions(i)) := '-';
            end loop;

            for i in positions'range loop
                positions(i) := positions(i) + move_value;
                -- if Level went to far make it start from begining
                if positions(i) >= (level_length+1) then -- if it moves to right (+1)
                    positions(i) := 1;
                end if;
                if positions(i) <= 0 then -- if it moves to left (-1)
                    positions(i) := level_length;
                end if;
            end loop;

            -- call update
            for i in positions'range loop
                level_string(positions(i)) := skin_print;
            end loop;
            gameM.update(y, level_string);

            end select;
        end loop;
    end Level;

end car;