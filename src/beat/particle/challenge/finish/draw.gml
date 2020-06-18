if mode_animation > -48*(15/2) && test = 0 {
draw_set_font(global.fontx1[2])draw_set_halign(fa_center)draw_set_valign(fa_center)
draw_text_transformed_color(x,room_height / 3.5,"BONUS",24,24,0,c_bittrip_pink,
c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,alpha_)draw_set_font(global.fontx1[3])
draw_text_transformed_color(x,y,
string_replace_all(string_format(chalbeatshit,string_length(string(chalbeats))
,0),' ','0')+"/"+string(chalbeats),24,24,0,c_bittrip_orange,
c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,alpha_)
draw_text_transformed_color(x,room_height / 1.45,"+"+string(chalbeatshit)+"0000",24,24,0,c_bittrip_cyan,
c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,alpha_)}
