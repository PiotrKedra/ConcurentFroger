with Ada.Text_IO; use Ada.Text_IO;

with gamemap; use gamemap;
with car; use car;
with frogertask; use frogertask;
with Frog; use Frog;
with menu; use menu;

procedure Main is

  menu_result:Integer;

  game_map : GameMapT_access := new GameMapT;

  frogT : Frog_access := new Frog.frogy;
  frog_control: frogertask.froger_task;
  --ADD Depandance from const so game does't crush when size changed
  Level1 : Level;
  Level2 : Level;
  Level3 : Level;
  Level4 : Level;
  Level5 : Level;
  Level6 : Level;
  Level7 : Level;


  positio : position_tab := (1=>1,2=>7,3=>15);
  positio2 : position_tab := (1=>4,2=>11,3=>18);
  no_exit:boolean:=true;
begin
  while no_exit loop
  put_line("przed medu");
  menu_result:=menu.show_menu;
  if menu_result=1 then
      
    Level1.set_gameMap_and_frog(game_map, frogT);
    Level2.set_gameMap_and_frog(game_map, frogT);
    Level3.set_gameMap_and_frog(game_map, frogT);
    Level4.set_gameMap_and_frog(game_map, frogT);
    Level5.set_gameMap_and_frog(game_map, frogT);
    Level6.set_gameMap_and_frog(game_map, frogT);
    Level7.set_gameMap_and_frog(game_map, frogT);
    Level1.set_start_position(positio2,1);
    Level1.set_values(1.0, -1, False);
    Level2.set_start_position(positio,2);
    Level2.set_values(1.0, 1, True);
    Level3.set_start_position(positio,3);
    Level3.set_values(1.0, -1, False);
    Level4.set_start_position(positio2,4);
    Level4.set_values(1.0, 1, True);
    Level5.set_start_position(positio,5);
    Level5.set_values(1.0, -1, False);
    Level6.set_start_position(positio2,6);
    Level6.set_values(1.0, 1, True);
    Level7.set_start_position(positio,7);
    Level7.set_values(1.0, 0, False);
    
    frog_control.set_frog(frogT);

    frogT.set_game_map(game_map);
    frogT.set_y(map_y_size);
    frogT.set_x(map_x_size/2);
    
    -- just loping 20 times
    while game_map.exited=false loop 
      
      game_map.show;

      delay 0.1; -- fps
    end loop;


  elsif menu_result=2 then
    put_line("Score Borad");
  else
    no_exit:=false;
  end if;

  -- kill all level
  Level1.end_level;
  Level2.end_level;
  Level3.end_level;
  Level4.end_level;
  Level5.end_level;
  Level6.end_level;
  Level7.end_level;
  
  end loop;
  put_line("wyszlo");
end Main;
