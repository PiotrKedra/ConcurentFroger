

package body car is
    ---------------------
    --Level BODY
    ----------------------
    task body Level is

        level_length : integer := map_x_size;

        gameM : GameMapT_access;

        frog : Frog_access;

        level_string : String(1 .. level_length) := (others => '-');

        positions : position_tab;
        old_positions : position_tab;
        y : integer;

        delay_value : Duration;
        move_value : integer;
        skin_print : character;   -- how it is shown

        begin

        accept set_gameMap_and_frog(game: GameMapT_access ;frog_acces : Frog_access) do
            gameM := game;
            frog := frog_acces;
        end set_gameMap_and_frog;

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

        -- main loop of the level
        loop
            select
                accept update_level_position do
                    y := y + 1;
                    if y > map_y_size then
                    y := 1;
                    end if;
                end update_level_position;
            or
                delay delay_value;

                -- check colision with frog
                if y = frog.get_y then
                    for i in positions'range loop
                        if positions(i) = frog.get_x then
                            put_line("Auto przejechalo zabe !!!!!!!!");
                        end if;
                    end loop;
                end if;

                old_positions := positions;

                -- clear old position
                for i in old_positions'range loop
                    level_string(positions(i)) := '-';
                end loop;

                -- move all cars forward
                for i in positions'range loop
                    positions(i) := positions(i) + move_value;

                    -- if position is out of range make it start from begining
                    if positions(i) >= (level_length+1) then -- if it moves to right (+1)
                        positions(i) := 1;
                    end if;
                    if positions(i) <= 0 then -- if it moves to left (-1)
                        positions(i) := level_length;
                    end if;
                end loop;

                -- create level string and send it to gameMap
                for i in positions'range loop
                    level_string(positions(i)) := skin_print;
                end loop;
                gameM.update(y, level_string);

            end select;
        end loop;
    end Level;

end car;