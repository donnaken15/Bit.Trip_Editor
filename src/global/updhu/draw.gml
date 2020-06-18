if updateout = 1 {
draw_set_color(make_color_hsv(random_range(0,255),random_range(0,255),random_range(127,255)))
draw_set_alpha(1)
draw_set_font(global.fontx5[5])
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
//draw_text(x-(79+(743*(room=designer))),(
draw_text(x-(785+(32*(room=designer))),(
room_height*(room!=designer)+
view_hview[0]*(room=designer)),
"UPDATE AVAILABLE! RUN UPDATE.EXE")
if frame>=300 instance_destroy() }
