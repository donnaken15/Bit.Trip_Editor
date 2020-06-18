draw_set_halign(fa_left)
draw_set_valign(fa_center)
switch test { case 0: draw_set_font(global.fontx1[2]) break case 1: draw_set_font(testfont) break }
alpha -= 0.03/(room_speed/60)
draw_text_transformed_color(x+16,y,"DANGER",11.8-(test*10.8),11.8-(test*10.8),0,
make_color_rgb(231,0,0),make_color_rgb(231,0,0),
make_color_rgb(231,0,0),make_color_rgb(231,0,0),alpha)
