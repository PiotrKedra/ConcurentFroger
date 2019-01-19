with Ada.Text_IO; use Ada.Text_IO;
package frog is 

procedure frogging;
protected type frogy is 
    procedure moveLeft;
    procedure moveRight;
    procedure moveUp;
    procedure moveDown;
   -- procedure die;   
private
  y,x:Integer;
  --game_map : GameMap.;
end frogy;


end frog;