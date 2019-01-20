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
  end frogy;



end frog;