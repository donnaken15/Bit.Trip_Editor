globalvar newlvltitle, creatingnewfile, active, activecheck, always_hit, bgcolor, __fullscr;
newlvltitle = ""
designer_mode = true
room_persistent = true
window_set_visible(true)
message_background(msg)
message_caption(1,"")
message_text_font("MS Sans Serif",8,c_black,0)
message_input_font("MS Sans Serif",8,c_black,0)
message_input_color(c_black)
message_mouse_color(c_black)
message_button_font("MS Sans Serif",8,c_black,0)
message_button(form_msgbutton)
message_size(256,128)
nosounds()
if !__first_frame {
view_wview[0] = ini_read_real("Designer","W",800)
view_hview[0] = ini_read_real("Designer","H",600)
window_set_size(ini_read_real("Designer","W",800), ini_read_real("Designer","H",600))
__first_frame=1 room_restart() }
window_set_position(
ini_read_real("Designer","X",(display_get_width()/2)-(window_get_width()/2)),
ini_read_real("Designer","Y",(display_get_height()/2)-(window_get_height()/2)))
window_set_fullscreen(ini_read_real("Designer","Fullscreen",0))
__fullscr=window_get_fullscreen()
