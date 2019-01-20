with Ada.Text_IO; use Ada.Text_IO;
with gamemap; use gamemap;
package frog is 

protected type frogy is
    function get_x return Integer;
    function get_y return Integer;
    procedure moveLeft;
    procedure moveRight;
    procedure moveUp;
    procedure moveDown;
   -- procedure die;   
private
  y,x:Integer;
  game_map : gamemap.GameMapT;
end frogy;


type frog_access is access frogy;

function create_frog return frog_access;

end frog;