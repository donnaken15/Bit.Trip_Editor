image_blend = color
draw_set_color(color)
draw_set_font(global.fontx1[2])
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_transformed(room_width/2,room_height/1.125,"CLICK TO CONTINUE",6,6,0)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,image_blend,image_alpha)
//draw_self()
