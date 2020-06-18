draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(global.fontx1[2])
alpha -= 0.03/(room_speed/60)
draw_text_transformed_color(x,y,"DANGER",6,6,0,
make_color_rgb(231,0,0),make_color_rgb(231,0,0),
make_color_rgb(231,0,0),make_color_rgb(231,0,0),alpha)
