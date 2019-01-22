with Ada.Text_IO; use Ada.Text_IO;
with gamemap; use gamemap;
with Frog; use Frog;

package car is
    ---------------------
    --Level TASK
    ----------------------
    task type Level is 
        --set value of movment ( we can control speed with it)
        entry set_values(delay_val: Duration; move_val: integer; right_directoin: boolean);

        entry set_start_position(start_positions: position_tab; y_cord: integer);

        entry update_level_position;

        entry set_gameMap_and_frog(game: GameMapT_access; frog_acces: Frog_access);
        
        entry end_level;

        entry exit_whole_task;

    end Level;

end car;