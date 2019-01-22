with Ada.Text_IO; use Ada.Text_IO;
with Frog;
use Frog;
package frogertask is 
 
    task type froger_task is
        entry set_frog(frog_in:frog_access);
        entry end_frog_move;
        entry end_frog_task;
    end froger_task;
     
end frogertask;