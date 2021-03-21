set_automatic_draw(true)
draw_set_alpha(1)
draw_set_color(c_white)
//if (gameover>0) y+=1 < this was here because of some stupid glitch that made the paddle go up
if test = 0 {
draw_rectangle_color(0,720+mode_animation,1280,(720*2)+mode_animation,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(x+9,720+104+mode_animation,1219,720+120+mode_animation,c_white,c_white,c_white,c_white,false)
draw_rectangle_color(x+9,720+600+mode_animation,1219,720+616+mode_animation,c_white,c_white,c_white,c_white,false) }
if mode_animation > -48*(15/2) && test = 0 && paddle_visible = 1 {
switch special
{
  case 0:
    draw_rectangle_color(x-8,y-32,x+8,y+32,make_color_rgb(252,165,0),make_color_rgb(252,165,0),
                                           make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
    break
  case 1:
    draw_rectangle_color(x-8,y-48,x+8,y+48,make_color_rgb(252,165,0),make_color_rgb(252,165,0),
                                           make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
    break
  case 2:
    draw_rectangle_color(x-8,y-24,x+8,y+24,make_color_rgb(252,165,0),make_color_rgb(252,165,0),
                                           make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
    break
  case 3:
    draw_rectangle_color(x-8,y-32,x+8,y+32,make_color_rgb(252,165,0),make_color_rgb(252,165,0),
                                           make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
    draw_rectangle_color(x-8,y-32-48-64,x+8,y-32-48,make_color_rgb(252,165,0),make_color_rgb(252,165,0),
                                           make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
    break
}
}
if mode_animation <-48*(15/2) && test = 0 && paddle_visible = 1 {
switch special
{
  case 0:
    if gameover<38
      draw_rectangle_color(x-8,y-32+(gameover/1.2),x+8,y+32-(gameover/1.2),c_white,c_white,c_white,c_white,false)
    break
  case 1:
    if gameover<36
      draw_rectangle_color(x-8,y-48+(gameover/0.75),x+8,y+48-(gameover/0.75),c_white,c_white,c_white,c_white,false)
    break
  case 2:
    if gameover<38
      draw_rectangle_color(x-8,y-24+(gameover/1.5),x+8,y+24-(gameover/1.5),c_white,c_white,c_white,c_white,false)
    break
  case 3:
    if gameover<38 {
      draw_rectangle_color(x-8,y-32+(gameover/1.25),x+8,y+32-(gameover/1.25),c_white,c_white,c_white,c_white,false)
      draw_rectangle_color(x-8,y-32-48-64+(gameover/1.25),x+8,y-32-48-(gameover/1.25),c_white,c_white,c_white,c_white,false)
    } break
}
}
if test = 1 && paddle_visible = 1 {
switch special
{
  case 0:
    if gameover<38
      draw_sprite_stretched(glados,0,x+1-19,y+1-33+gameover,27,66-(gameover*2))
    break
  case 1:
    if gameover<46
      draw_sprite_stretched(glados,0,x+1-19,y+1-33-16+(gameover*1.25),27,66+32-(gameover*2.25))
    break
  case 2:
    if gameover<38
      draw_sprite_stretched(glados,0,x+1-19,y+1-33+8+gameover,27,66-16-(gameover*2))
    break
  case 3:
    if gameover<38 {
    draw_sprite_stretched(glados,0,x+1-19,y+1-33+gameover,27,66-(gameover*2))
    draw_sprite_stretched(glados,1,x+1-19,y+1-48-65-33+gameover,27,66-(gameover*2))
    } break
}
}
if test = 0 {
draw_rectangle_color(x+9,104+mode_animation,1219,120+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(x+9,600+mode_animation,1219,616+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-16,120-64+mode_animation,1219,120+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-47,120-64+mode_animation,1219,120-64+16+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-16,616+mode_animation,1219,616+48+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-47,616+32+mode_animation,1219,616+48+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(x+9,-720+104+mode_animation,1219,-720+120+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(x+9,-720+600+mode_animation,1219,-720+616+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-16,-720+120-64+mode_animation,1219,-720+120+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-47,-720+120-64+mode_animation,1219,-720+120-64+16+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-16,-720+616+mode_animation,1219,-720+616+48+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
draw_rectangle_color(1219-47,-720+616+32+mode_animation,1219,-720+616+48+mode_animation,make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false) }

draw_set_halign(fa_left)
draw_set_valign(fa_top)

if test = 0 window_set_caption("BIT . TRIP BEAT")
else window_set_caption("WE'VE GOT SOME TESTING TO DO")

if test = 0 {
if os_type=os_windows draw_set_font(global.fontx5[4])
else draw_set_font(global.fontx5[1])
if showmodes {
draw_text_transformed_color(930,37+mode_animation,"MEGA",2.4,2.4,0,make_color_rgb(0,255,0),make_color_rgb(0,255,0),make_color_rgb(0,255,0),make_color_rgb(0,255,0),1)
draw_text_transformed_color(835,640+mode_animation,"NETHER",2.4,2.4,0,make_color_rgb(172,170,191),make_color_rgb(172,170,191),make_color_rgb(172,170,191),make_color_rgb(172,170,191),1)
draw_text_transformed_color(846,-720+37+mode_animation,"MULTI+",2.4,2.4,0,current_mega_colors[3],current_mega_colors[3],current_mega_colors[3],current_mega_colors[3],1)
draw_text_transformed_color(884,-720+640+mode_animation,"HYPER",2.4,2.4,0,current_mega_colors[4],current_mega_colors[4],current_mega_colors[4],current_mega_colors[4],1) }
if os_type=os_windows draw_set_font(global.fontx5[9])
if showscore {
draw_text_transformed_color(85,37+mode_animation,string_replace_all(string_format(score,10,0)
,' ','0'),2.4,2.4,0,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,1)
draw_text_transformed_color(85,-720+37+mode_animation,string_replace_all(string_format(score,10,0)
,' ','0'),2.4,2.4,0,current_mega_colors[9],current_mega_colors[9],current_mega_colors[9],current_mega_colors[9],1) }
if showcombo {
draw_text_transformed_color(85,637+mode_animation,combo_str,2.4,2.4,0,c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,1)
draw_text_transformed_color(85,-720+637+mode_animation,combo_str,2.4,2.4,0,current_mega_colors[4],current_mega_colors[4],current_mega_colors[4],current_mega_colors[4],1) }
if showmulti {
draw_text_transformed_color(310,637+mode_animation,"X",2.4,2.4,0,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,1)
draw_text_transformed_color(376,637+mode_animation,string_replace_all(string_format(multi,4,0)
,' ','0'),2.4,2.4,0,c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,c_bittrip_orange,1)
draw_text_transformed_color(310,-720+637+mode_animation,"X",2.4,2.4,0,current_mega_colors[2],current_mega_colors[2],current_mega_colors[2],current_mega_colors[2],1)
draw_text_transformed_color(376,-720+637+mode_animation,string_replace_all(string_format(multi,4,0)
,' ','0'),2.4,2.4,0,current_mega_colors[3],current_mega_colors[3],current_mega_colors[3],current_mega_colors[3],1) }

draw_set_halign(fa_center)draw_set_valign(fa_center)draw_set_font(global.fontx5[6])
if mode=1
  draw_text_transformed_color(room_width/2,room_height/2,"HYPER",6,6,0,
  make_color_rgb(63,63,63),make_color_rgb(63,63,63),
  make_color_rgb(63,63,63),make_color_rgb(63,63,63),.0175)
if mode=2
  draw_text_transformed_color(room_width/2,room_height/2,"MEGA",6,6,0,
  make_color_rgb(63,63,63),make_color_rgb(63,63,63),
  make_color_rgb(63,63,63),make_color_rgb(63,63,63),.0175)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

hyper_up_part1 = hyper_up*1.3334
hyper_up_part2 = hyper_up-75*20
hyper_up_part3 = hyper_up-78*50
mega_multi_bar = mega_multi*7.142857142857143
mega_lose_bar = mega_lose*20
hyper_lose_bar = hyper_lose*7.6
nether_bar = nether_up*5
nether_lose_bar = nether_lose*9.090909090909091

if hyper_up > 0 {
draw_healthbar(x+10,105+mode_animation,1218,119+mode_animation,hyper_up_part1,make_color_rgb(0,150,0),make_color_rgb(0,150,0),make_color_rgb(0,150,0),0,false,false) }

if mega_multi > 0 {
draw_healthbar(x+10,-720+105+mode_animation,1218,-720+119+mode_animation,mega_multi_bar,make_color_rgb(75,75,145),make_color_rgb(75,75,145),make_color_rgb(75,75,145),0,false,false) }

if hyper_lose > 0 {
draw_healthbar(x+10,601+mode_animation,1218,615+mode_animation,hyper_lose_bar,make_color_rgb(160,160,180),make_color_rgb(160,160,180),make_color_rgb(160,160,180),0,false,false) }

if mega_lose > 0 {
draw_healthbar(x+10,-720+601+mode_animation,1218,-720+615+mode_animation,mega_lose_bar,make_color_rgb(231,120,164),make_color_rgb(231,120,164),make_color_rgb(231,120,164),0,false,false) }

if nether_up > 0 {
draw_healthbar(x+10,720+105+mode_animation,1218,720+119+mode_animation,nether_bar,c_black,c_black,c_black,0,false,false) }

if nether_lose_bar > 0 {
draw_healthbar(x+10,720+601+mode_animation,1218,720+615+mode_animation,nether_lose_bar,c_black,c_black,c_black,0,false,false) }

switch hyper_up {
       case 76: draw_rectangle_color(1219-15,120-31+mode_animation,1218,119+mode_animation,make_color_rgb(0,150,0),make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),false) break
       case 77: draw_rectangle_color(1219-15,120-47+mode_animation,1218,119+mode_animation,make_color_rgb(0,150,0),make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),false) break
       case 78: draw_rectangle_color(1219-15,120-63+mode_animation,1218,119+mode_animation,make_color_rgb(0,150,0),make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),false) break
       case 79: draw_rectangle_color(1219-46+15,120-63+mode_animation,1218,120-65+16+mode_animation,make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),make_color_rgb(0,150,0),false)
                draw_rectangle_color(1219-15,120-63+mode_animation,1218,119+mode_animation,make_color_rgb(0,150,0),make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),false) break
       case 80: draw_rectangle_color(1219-15,120-63+mode_animation,1218,119+mode_animation,make_color_rgb(0,150,0),make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),false)
                draw_rectangle_color(1219-46,120-63+mode_animation,1218,120-65+16+mode_animation,make_color_rgb(0,150,0),
                make_color_rgb(0,150,0),make_color_rgb(0,150,0),make_color_rgb(0,150,0),false) break
       }
}

if test = 1 {
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(testfont)
draw_text_transformed_color(85,17+mode_animation,string_replace_all(string_format(score,10,0)
,' ','0'),1,1,0,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,1)
draw_text_transformed_color(85,617+mode_animation,combo_str,1,1,0,c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,1)
}

draw_set_font(global.fontx1[2])
draw_set_color(c_white)
if debug_mode
{ draw_text(x+12,y-36,"x: "+string(x)+"#y: "+string(y)+"#score: "+string(score)+"#combo: "+string(combo)+"#multi: "+
string(multi)+"x#fps: "+string(fps)+"#mode: "+string(mode)+"#mega: "+string(mega_multi)+"/14 : "+string(mega_lose)+
"/5#hyper: "+string(hyper_up)+"/80 : "+string(hyper_lose)+"/14#nether: "+string(nether_up)+"/20 : "+
string(nether_lose)+"/11#time: "+string(timeline_position)+"#instances: "+string(instance_count)+
"#violet: "+string(beat_beat_violet.x)+"#powerup: "+string(special)+"#gameover: "+string(gameover)+"#win: "+string(win_)+
'#chartest: !"$%^'+"'()*+,-./
0123456789:;<=>?@
ABCDEFGHIJKLMNOPQRSTUVWXYZ
[\]^_`
abcdefghijklmnopqrstuvwxyz
{|}~")
for (i=0;i<10;i+=1)
draw_point_color(100+i,10,current_mega_colors[i+1]) }

execute_string(drawcode)
