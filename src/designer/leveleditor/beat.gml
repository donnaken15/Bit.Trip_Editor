
window_set_cursor(cr_default)

if mouse_check_button_pressed(mb_left)
{ if mouse_y>y-(sizey/2) && mouse_y<y-(sizey/2)+16 && mouse_x>x-(sizex/2)+6 && mouse_x<x+(sizex/2)-20 && activecheck { grab = true
xx = x - mouse_x
yy = y - mouse_y }

if mouse_x>x-(sizex/2) && mouse_y>y-(sizey/2) && mouse_x<x+(sizex/2) && mouse_y<y+(sizey/2) && activecheck
{ active = id activecheck = 0 }

if mouse_y>y-192 && mouse_y<y-192+16 && mouse_x>x+(sizex/2)-16 && mouse_x<x+(sizex/2) { closepressed = true } }

if mouse_check_button_released(mb_left) { grab = false
if mouse_y>y-192 && mouse_y<y-192+16 && mouse_x<x+(sizex/2) && closepressed = true { instance_destroy() with timeline_txt instance_destroy() }
closepressed = false }

draw_set_font(mssansserif)
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle_color(x-(sizex/2),y-(sizey/2),x+(sizex/2),y+(sizey/2),
make_color_rgb(212,208,200),make_color_rgb(212,208,200),
make_color_rgb(212,208,200),make_color_rgb(212,208,200),false)
draw_rectangle_color(x-(sizex/2)+8,y-(sizey/2)+21,x-8,y-4,make_color_rgb(234,230,224),make_color_rgb(234,230,224),make_color_rgb(234,230,224),make_color_rgb(234,230,224),false)
draw_rectangle_color(x-(sizex/2)+72,y-(sizey/2)+21,x-8,y-4,make_color_rgb(32,30,28),make_color_rgb(32,30,28),make_color_rgb(32,30,28),make_color_rgb(32,30,28),false)
draw_line_color(x-(sizex/2)+72,y-(sizey/2)+22,x-(sizex/2)+72,y-(sizey/2)+192,c_gray,c_gray)

surface_set_target(objlistbox)
draw_clear_alpha(c_red,0)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_white)

switch list {

/*case 0:

// maybe make func for this, may be wasteful copy and pasting

// LIST ITEM
draw_rectangle_color(24-4,24-4,24+4,24+4,c_bittrip_yellow,c_bittrip_yellow,c_bittrip_yellow,c_bittrip_yellow,0)
draw_text(24,48,"Normal")
if mouse_rectangle(x-(sizex/2)+73+4,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
//if mouse_check_button_pressed(mb_left) & active designer_beat_create("Normal",beat_beat_normal) }
}
// END LIST ITEM

// LIST ITEM
draw_rectangle_color(72-4,24-4,72+4,24+4,c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,0)
draw_text(72,48,"Orange")
if mouse_rectangle(x-(sizex/2)+73+4+48,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
//if mouse_check_button_pressed(mb_left) & active designer_beat_create("Orange",beat_beat_orange) }
}
// END LIST ITEM

break*/

case 1:

// LIST ITEM
for (i = 1; i < 4; i += 2)
{draw_circle(24*(i),24,12,0)
draw_set_color(c_black)
draw_circle(24*(i),24,12,1)
draw_line(24*(i),24,24*(i),14)
draw_line(24*(i),24,24*(i)+4,28)
draw_set_color(c_white)}
draw_text(24,48,"Tempo")
if mouse_rectangle(x-(sizex/2)+73+4,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
if mouse_check_button_pressed(mb_left) & active timelineraw[timeline_position] += "bpm=" + string(get_integer("Enter value:",bpm)) + ";" }
// END LIST ITEM

// LIST ITEM
draw_circle(72,24,12,0)
draw_set_color(c_black)
draw_circle(72,24,12,1)
draw_line(72,24,72,14)
draw_line(72,24,76,28)
draw_set_color(c_white)
draw_text(72,48,"FPS")
if mouse_rectangle(x-(sizex/2)+73+4+48,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
if mouse_check_button_pressed(mb_left) & active timelineraw[timeline_position] += "room_speed=" + string(get_integer("Enter value (FPS):",room_speed)) + ";" }
// END LIST ITEM

// LIST ITEM
draw_text(120,48,"Pause")
draw_set_color($00007F)
draw_rectangle(120-10,24-10,120-4,24+10,0)
draw_rectangle(120+10,24+10,120+4,24-10,0)
if mouse_rectangle(x-(sizex/2)+73+4+48+48,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
if mouse_check_button_pressed(mb_left) & active timelineraw[timeline_position] += "pause(" + string(get_integer("Enter value (FPS):",30)) + ");" }
// END LIST ITEM

break

case 2:

//* LIST ITEM
draw_set_color(c_white)
draw_text(24,48,"Win")
if mouse_rectangle(x-(sizex/2)+73+4,y-(sizey/2)+36,40,44) && active { window_set_cursor(cr_handpoint)
if mouse_check_button_pressed(mb_left) & active timelineraw[timeline_position] += "win()" }
// END LIST ITEM*/

break

}

surface_reset_target()
draw_surface_part(objlistbox,0,0,256,100,x-(sizex/2)+73,y-(sizey/2)+22)

draw_set_color(c_black)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x-(sizex/2)+16,y-(sizey/2)+28,"Beats")
if mouse_rectangle(x-(sizex/2)+14,y-(sizey/2)+26,32,16) && active { window_set_cursor(cr_handpoint)draw_set_alpha(.5)draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+26,x-(sizex/2)+14+32,y-(sizey/2)+26+16,$7F0000,$7F0000,$7F0000,$7F0000,0)draw_set_alpha(1) if mouse_check_button_pressed(mb_left) & active list = 0 }
if list = 0 { draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+26,x-(sizex/2)+14+32,y-(sizey/2)+26+16,$7F0000,$7F0000,$7F0000,$7F0000,0) draw_text_color(x-(sizex/2)+16,y-(sizey/2)+28,"Beats",c_white,c_white,c_white,c_white,1) }
draw_text(x-(sizex/2)+16,y-(sizey/2)+48,"Timing")
if mouse_rectangle(x-(sizex/2)+14,y-(sizey/2)+46,38,16) && active { window_set_cursor(cr_handpoint)draw_set_alpha(.5)draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+46,x-(sizex/2)+14+35,y-(sizey/2)+46+16,$7F0000,$7F0000,$7F0000,$7F0000,0)draw_set_alpha(1) if mouse_check_button_pressed(mb_left) & active list = 1 }
if list = 1 { draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+46,x-(sizex/2)+14+35,y-(sizey/2)+46+16,$7F0000,$7F0000,$7F0000,$7F0000,0) draw_text_color(x-(sizex/2)+16,y-(sizey/2)+48,"Timing",c_white,c_white,c_white,c_white,1) }
draw_text(x-(sizex/2)+16,y-(sizey/2)+68,"Events")
if mouse_rectangle(x-(sizex/2)+14,y-(sizey/2)+66,28,16) && active { window_set_cursor(cr_handpoint)draw_set_alpha(.5)draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+66,x-(sizex/2)+14+37,y-(sizey/2)+66+16,$7F0000,$7F0000,$7F0000,$7F0000,0)draw_set_alpha(1) if mouse_check_button_pressed(mb_left) & active list = 2 }
if list = 2 { draw_rectangle_color(x-(sizex/2)+14,y-(sizey/2)+66,x-(sizex/2)+14+37,y-(sizey/2)+66+16,$7F0000,$7F0000,$7F0000,$7F0000,0) draw_text_color(x-(sizex/2)+16,y-(sizey/2)+68,"Events",c_white,c_white,c_white,c_white,1) }
//make_color_rgb(51,153,255)
draw_line_color(x-(sizex/2),y-(sizey/2),x-(sizex/2),y+(sizey/2),c_white,c_white)
draw_line_color(x-(sizex/2),y-(sizey/2),x+(sizex/2)+1,y-(sizey/2),c_white,c_white)
draw_line_color(x-(sizex/2)+8,y-(sizey/2)+21,x-7,y-(sizey/2)+21,c_white,c_white)
draw_line_color(x-(sizex/2)+8,y-(sizey/2)+21,x-(sizex/2)+8,y-(sizey/2)+192,c_white,c_white)
draw_line_color(x-(sizex/2),y+(sizey/2),x+(sizex/2),y+(sizey/2),make_color_rgb(64,64,64),make_color_rgb(64,64,64))
draw_line_color(x+(sizex/2),y+(sizey/2),x+(sizex/2),y-(sizey/2),make_color_rgb(64,64,64),make_color_rgb(64,64,64))
draw_line_color(x-(sizex/2)+8,y-(sizey/2)+192,x-7,y-(sizey/2)+192,make_color_rgb(64,64,64),make_color_rgb(64,64,64))
draw_line_color(x-8,y-(sizey/2)+22,x-8,y-(sizey/2)+192,make_color_rgb(64,64,64),make_color_rgb(64,64,64))
draw_line_width_color(x-(sizex/2)+1,y+6,x+(sizex/2),y+6,2,make_color_rgb(63,63,63),make_color_rgb(63,63,63))
draw_text(x-(sizex/2)+2,y-(sizey/2)+2,string(levelname)+" | Bit . Trip Editor")
draw_set_color(backcolor)
draw_rectangle(x+(sizex/2)-4,y-174,x+(sizex/2)-328,y-(sizey/2)+196,false)
draw_set_color(c_black)
draw_rectangle_color(x+25,y-146,x+(sizex/2)-20,y-149,c_yellow,c_yellow,c_yellow,c_yellow,false)
draw_rectangle_color(x+25,y-25,x+(sizex/2)-20,y-22,c_yellow,c_yellow,c_yellow,c_yellow,false)
draw_sprite(form_closebtn,closepressed && mouse_check_button(mb_left) && mouse_rectangle
(x+(sizex/2)-18,y-192,16,16),x+(sizex/2)-18,y-192)
draw_text_transformed(x-(sizex/2)+4,y+8,"TIME: "+
string_replace_all(string_format(recursion(floor(timeline_position/room_speed/60),60),2,0),' ','0')+":"+
string_replace_all(string_format(recursion(floor(timeline_position/room_speed),60),2,0),' ','0')+";"+
string_replace_all(string_format(recursion(timeline_position,60),2,0),' ','0')+" | BPM: "+string(bpm),2,2,0)
draw_rectangle_color(x-(sizex/2)+4+16,y+50,x+(sizex/2)-4,y+190,
c_white,c_white,c_white,c_white,false)
draw_rectangle(x-(sizex/2)+4+16,y+50,x+(sizex/2)-4,y+190,true)
draw_line(x-(sizex/2)+30+16,y+50,x-(sizex/2)+30+16,y+190)
if timeline_running || (active=id && (keyboard_check(vk_pageup) || keyboard_check(vk_pagedown))) timeline_view_position = timeline_position - 5
for (i = timeline_view_position; i < timeline_view_position+11; i += 1)
{if i >= 0{
draw_set_halign(fa_left)
draw_text(x-(sizex/2)+5+16,y+50+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)),string(i))
if i = timeline_position draw_sprite(timeline_cursor,0,x-(sizex/2)+8,y+50+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)))
if string(timelineraw[i]) != "0" if selectedframe != i draw_text(x-(sizex/2)+31+16,y+50+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)),timelineraw[i]) if selectedframe = i textbox_draw(timeline_txt,x-(sizex/2)+31+16,y+50+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)),x+(sizex/2)-4,y+50+(13)+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54))) draw_line(x-(sizex/2)+4+16,y+62+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)),x+(sizex/2)-4,y+62+round(((timeline_view_position*-1)+i)/11*((sizey/2)-54)))}}
if selectedframe > 0 if selectedframe > timelinerawlen && string(timelineraw[selectedframe]) != "0" timelinerawlen = selectedframe
if mouse_rectangle(x-(sizex/2)+4+16,y+50,sizex-24,140) { timeline_view_position -= mouse_wheel_up()*(timeline_view_position > -10) timeline_view_position += mouse_wheel_down() if mouse_check_button_pressed(mb_left) { selectedframe = floor((mouse_y-(y+50))/13)+timeline_view_position if textbox_mouseover = -1 && selectedframe >= 0 if string(timelineraw[selectedframe]) != "0" && selectedframe >= 0 timeline_txt.text = timelineraw[selectedframe] else timeline_txt.text="" } } else if mouse_check_button_pressed(mb_left) if mouse_y>16 selectedframe = -1
if textbox_focus >= 0 && selectedframe >= 0 if string(timelineraw[selectedframe]) != string(timeline_txt.text) { timelineraw[selectedframe] = timeline_txt.text timeline_moment_clear(timeline,selectedframe) timeline_moment_add(timeline,selectedframe,string_replace_all(string_replace_all(string_replace_all(string_replace_all('execute_string("'+string_replace_all(timelineraw[selectedframe],'"','"'+"+'"+'"'+"'+"+'"')+'")',"game_end(","designerprotection("),"show_message(","designerprotection("),"room_goto(","designerprotection("),"bgcolor","backcolor")) }
if grab { x = mouse_x + xx y = mouse_y + yy }
if active = id {
if keyboard_check_pressed(vk_space) && textbox_focus < 0 if instance_number(pauser) <= 0 { timeline_running = !timeline_running } else { with pauser { instance_destroy() } timeline_running = false }
if keyboard_check(vk_pageup) if timeline_position > 0 timeline_position -= 1+timeline_running
if keyboard_check(vk_pagedown) timeline_position += 1
if keyboard_check_pressed(vk_home) { timeline_position = 0 timeline_view_position = -5 } }
else { draw_set_alpha(.5) draw_rectangle_color(x-(sizex/2),y-(sizey/2),x+(sizex/2),y+(sizey/2),make_color_rgb(212,208,200),make_color_rgb(212,208,200),make_color_rgb(212,208,200),make_color_rgb(212,208,200),0) draw_set_alpha(1) }
if (textbox_mouseover!=timeline_txt)
if (mouse_rectangle(x+(sizex/2)-6,y+(sizey/2)-6,10,10)||mouse_rectangle(x-(sizex/2)-4,y-(sizey/2)-4,10,10))
window_set_cursor(cr_size_nwse)
else if (mouse_rectangle(x+(sizex/2)-8,y-(sizey/2)-4,12,12)||mouse_rectangle(x-(sizex/2)-6,y+(sizey/2)-4,12,12)) window_set_cursor(cr_size_nesw)

