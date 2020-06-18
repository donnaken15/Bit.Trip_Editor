if alpha<=1alpha+=.025
draw_set_alpha(alpha)
draw_set_font(global.fontx1[2])
draw_set_halign(fa_center)
draw_set_valign(fa_center)
//draw_text_transformed_color(room_width/2,room_height/12,"END OF LEVEL",10,10,0,
//c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,alpha)
draw_text_transformed_color(room_width/2,room_height/5,
string_replace_all(string_replace_all(string(difficulty),"0","EASY"),"1","NORMAL"),8,8,0,
c_bittrip_purple,c_bittrip_purple,c_bittrip_purple,c_bittrip_purple,alpha)
draw_text_transformed_color(x+(room_width/2),room_height/2.5,"SCORE",12,12,0,
make_color_rgb(0,255,0),make_color_rgb(0,255,0),make_color_rgb(0,255,0),make_color_rgb(0,255,0),1)
draw_set_font(global.fontx1[3])
draw_text_transformed_color(x+(room_width/2),room_height/2,string_replace_all(string_format(scoretally,10,0)
,' ','0'),16,16,0,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,1)

