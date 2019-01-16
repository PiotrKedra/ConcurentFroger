with Gtk.Main;
with Gtk.Window; use Gtk.Window;
with Gtk.Box;         use Gtk.Box;
with Gtk.Image;

procedure Main is
   Window : Gtk_Window;
   img : Gtk.Image.Gtk_Image;
   hbox : gtk_hbox;
begin
   Gtk.Main.Init;
   
   Gtk_New(Window);
   Initialize(Window);
   Set_Title(Window, "Froger");
   Set_Default_Size(Window, 400, 400);
   
   Gtk_New_Hbox(hbox, False, 0);

   Add(Window, hbox);
   
   Show(hbox);

   Show(Window);
   Gtk.Main.Main;
end Main;
