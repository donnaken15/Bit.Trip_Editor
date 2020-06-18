globalvar bgcolor;
draw_set_alpha(1)
draw_rectangle_color(0,0,1280,720,bgcolor,bgcolor,bgcolor,bgcolor,false)

if room=core { draw_set_alpha(mode_animation<0)
draw_rectangle_color(0,mode_animation+600,
room_width,mode_animation+1440,0,0,0,0,false) }
