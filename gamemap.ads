with Ada.Text_IO; use Ada.Text_IO;


package gamemap is
    -- 2d array of characters
    map_y_size:constant Integer:=7;
    map_x_size:constant Integer:=20;
    
    cars_number:constant Integer:=3;
    type array_2d is array (1 .. map_y_size) of String(1..map_x_size);

    type position_tab is array (1 .. cars_number) of integer;

    ---------------------
    --GAMEMAP TYPE
    ----------------------
    protected type GameMapT is
        -- print
        procedure show;

        -- update is used by Level (in future by frog as well) to mark new position
        entry update(y: integer; level: String);

        procedure update_frog_position(x : integer; y : integer);

        procedure release;
        

        private
            -- if busy is false it means Level can goes and calls update
            busy: boolean := false;
            -- fill map with '-' characters
            level_map : array_2d := (others => (others => '-'));

            y_frog : integer := 7;
            x_frog : integer := 10;
    end GameMapT;

    -- pointer to gameMap
    type GameMapT_access is access GameMapT;


end gamemap;