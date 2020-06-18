draw_set_halign(fa_left)
draw_set_valign(fa_center)
switch test { case 0: draw_set_font(global.fontx1[2]) break case 1: draw_set_font(testfont) break }
alpha -= 0.03/(room_speed/60)
if mode = 1 { draw_text_transformed_color(x+16,y,"MISS",11.8-(test*10.8),11.8-(test*10.8),0,make_color_rgb(0,255,255),make_color_rgb(0,255,255),make_color_rgb(0,255,255),make_color_rgb(0,255,255),alpha) }
else if mode = 2 { draw_text_transformed_color(x+16,y,"MISS",11.8-(test*10.8),11.8,0-(test*10.8),mycolor,mycolor,mycolor,mycolor,alpha) }

