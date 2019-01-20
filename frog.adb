package body frog is 

  protected body frogy is
    procedure moveLeft is
    begin
      put_line("Left");
    end;

    procedure moveUp is
      begin
        put_line("Up");
      end; 

    procedure moveRight is
      begin
        put_line("Right");
      end; 

    procedure moveDown is
      begin
       put_line("Down");
      end;   

    function get_x return Integer is
      begin
       return x;
      end;

    function get_Y return Integer is
      begin
        return y;
      end;

    procedure set_x(x_in:in Integer) is
    begin
      x:=x_in;
    end set_x;
   
    procedure set_game_map(game_map_in:GameMapT) is 
      begin
        game_map:=game_map_in;
      end set_game_map;

    procedure set_y(y_in:in Integer) is
      begin
        y:=y_in;
      end set_y;

  end frogy;


  function create_frog(x:in Integer; y:in Integer) return frog_access is
    hero:frog_access;
    
    begin
      hero:=new frogy;
      hero.set_x(x);
      hero.set_y(y);
      return hero;

  end create_frog;

end frog;