with Ada.Text_IO; use Ada.Text_IO;


package gamemap is
    -- 2d array of characters
    type array_2d is array (1 .. 7) of String(1..20);

    type position_tab is array (1 .. 3) of integer;

    ---------------------
    --GAMEMAP TYPE
    ----------------------
    protected type GameMapT is
        -- print
        procedure show;

        -- update is used by Level (in future by frog as well) to mark new position
        entry update(y: integer; level: String);

        entry update_frog_position(x : integer; y : integer);

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