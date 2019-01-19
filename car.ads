with Ada.Text_IO; use Ada.Text_IO;
with gamemap; use gamemap;

package car is
    ---------------------
    --Level TASK
    ----------------------
    task type Level is 
        --set value of movment ( we can control speed with it)
        entry set_values(delay_val: Duration; move_val: integer; right_directoin: boolean);

        entry set_start_position(start_positions: position_tab; y_cord: integer);

        entry update_level_position;

        entry set_gameMap(game: GameMapT_access);

    end Level;

end car;