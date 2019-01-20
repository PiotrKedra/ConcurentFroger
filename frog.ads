with Ada.Text_IO; use Ada.Text_IO;
with gamemap; use gamemap;
package frog is 

type frog_access is acces frogy;

protected type frogy is 
    procedure moveLeft;
    procedure moveRight;
    procedure moveUp;
    procedure moveDown;
   -- procedure die;   
private
  y,x:Integer;
  game_map : gamemap.GameMapT;
end frogy;


end frog;