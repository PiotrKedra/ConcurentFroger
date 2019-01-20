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


function create_frog return frog_access is
hero:frog_access;
begin
put_line("Assa");
hero:=new frogy;
return hero;
end create_frog;


end frog;