
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Controller is

    type multi is array(1..20,1..20) of INTEGER;

   task Map is
      entry get;
   end Map;

   task body Map is   
   begin
        accept get do
        Put_Line("I am out of hot dogs");
        end get;
   end Map;

    task printer;
    task body printer  is
    GameWorld: multi;
    begin
        
        while True loop


            for y in 1..20 loop
                for x in 1..20 loop
                    Put(GameWorld(x,y),1);
                    


                end loop;
                New_Line;
            end loop;
            delay 0.1;
        
        Put(ASCII.ESC & "[2J");    
        end loop;

    end printer;


begin
    Map.get;

end Controller;


