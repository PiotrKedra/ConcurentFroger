with Ada.Text_IO; use Ada.Text_IO;
with Frog;
use Frog;
package frogertask is 
 
    task type froger_task is
     entry set_frog(frog_in:frog_access);
    end froger_task;

end frogertask;