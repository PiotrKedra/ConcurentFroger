with Ada.Text_IO; use Ada.Text_IO;

procedure map is

-- 2d array of characters
type array_2d is array (1 .. 5) of String(1..10);

-- it is sth (class?) of map
protected type GameMap is
  procedure show; --print

  -- update is used by car (in future by frog as well) to mark new position
  entry update(y: integer; new_position: in integer; old_position: in integer; car: in character);
 
  -- it is udsed by car to unmark old positino when updating_level_positon
  entry clear_old_position(y: integer; x: integer);

  procedure release;

private
  -- if busy is false it means car can goes and calls update
  busy: boolean := false;
  level_map : array_2d := (others => (others => '_'));
end GameMap;

protected body GameMap is

  --update with barrier (busy) 
  entry update(y: integer; new_position: in integer; old_position: in integer; car: in character) when not busy is
  begin
    busy := true;
    level_map(y)(old_position) := '_';
    level_map(y)(new_position) := car;
    release;
  end update;

  entry clear_old_position(y: integer; x: integer) when not busy is
  begin
    busy := true;
    level_map(y)(x) := '_';
    release;
  end clear_old_position;

  -- release the update entry
  procedure release is
  begin
    busy := false;
  end release;

  -- just printing the map
  procedure show is
  begin
    put_line("tutaj trzbe clearowac terminal");
    for i in level_map'range loop
      put_line(" ");
      for j in level_map(i)'range loop
        put(level_map(i)(j)'img);
      end loop;
    end loop;
    put_line(" ");
  end show;
end GameMap;

-- task for one car
task type Car is 
  --set value of movment ( we can control speed with it)
  entry set_values(delay_val: Duration; move_val: integer);

  entry set_start_position(x_cord: integer; y_cord: integer);

  entry update_level_position;

end Car;

-- inicialize the GameMap;
game_map : GameMap;


task body Car is
  y : integer :=1;
  x : integer :=1;
  old_x : integer;
  delay_value : Duration;
  move_value : integer;
  skin_print : character := '>';   -- how it is shown

begin
  -- wait for set_start_positon call
  accept set_start_position(x_cord: integer; y_cord: integer) do
    x := x_cord;
    y := y_cord;
  end set_start_position;
  -- wait for set_values call
  accept set_values(delay_val: Duration; move_val: integer) do
    delay_value := delay_val;
    move_value := move_val;
  end set_values;

  -- update position (imo we shoudl check colsion with frog here as well)
  loop
    select
      accept update_level_position do

        game_map.clear_old_position(y, x);
        put_line("position updated");

        y := y + 1;
        if y > 5 then
          y := 1;
        end if;
      end update_level_position;
    or
      delay delay_value;

      old_x := x;
      x := x + move_value;

      -- if car went to far make it start from begining
      if x >= 11 then -- if it moves to right (+1)
        x := 1;
      end if;
      if x <= 0 then -- if it moves to left (-1)
        x := 10;
      end if;

      -- call update
      game_map.update(y, x, old_x, skin_print);

    end select;
  end loop;
end Car;

car1 : Car;
car2 : Car;
car3 : Car;
car4 : Car;
begin
  car1.set_start_position(2,2);
  car1.set_values(1.0, 1);
  car2.set_start_position(1,1);
  car2.set_values(1.0, 1);
  car3.set_start_position(2,3);
  car3.set_values(1.0, -1);
  car4.set_start_position(3,4);
  car4.set_values(0.5, 1);

  -- just loping 20 times
  for i in integer range 0 .. 20 loop
    game_map.show;
    if i = 6 then
      car1.update_level_position;
      car2.update_level_position;
      car3.update_level_position;
      car4.update_level_position;
    end if;
    delay 1.0; -- fps
  end loop;

  -- it never end, has to kill it with ctr + c
end map;
    