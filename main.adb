with Ada.Text_IO; use Ada.Text_IO;

with scoreboard; use scoreboard;
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
    put_line("KUpa");
    game_map.update_frog_position(10,7);
    
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
    

    
    put_line("Tutaj kupa");

    frogT.set_game_map(game_map);
    frogT.set_y(map_y_size);
    frogT.set_x(map_x_size/2);
    frog_control.set_frog(frogT);

    
    -- just loping 20 times
    put_line("przed lup");
    while game_map.exited=false loop 
      put_line("po  lup");
      game_map.show;

      delay 0.1; -- fps
    end loop;
    frog_control.end_frog_move;

    game_map.score_to_txt;

  elsif menu_result=2 then
    show_score_board;
  else
    no_exit:=false;
  end if;

  game_map.set_exit_gamee(false);


  if no_exit = false or menu_result=2 then
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

    frogT.set_game_map(game_map);
    frogT.set_y(map_y_size);
    frogT.set_x(map_x_size/2);
    frog_control.set_frog(frogT);
      frog_control.end_frog_move;

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

  frog_control.end_frog_task;


  Level1.exit_whole_task;
  Level2.exit_whole_task;
  Level3.exit_whole_task;
  Level4.exit_whole_task;
  Level5.exit_whole_task;
  Level6.exit_whole_task;
  Level7.exit_whole_task;

  put_line("wyszlo");
end Main;
