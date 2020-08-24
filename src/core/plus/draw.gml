set_automatic_draw(true)

if mode_animation<0
depth = -2147483645
else depth = -2147483647

draw_set_color(c_bittrip_purple)
draw_set_font(global.fontx5[3])
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_alpha(1)
window_set_cursor(cr_default)

image_index += 1

if mode_animation >= 0 && mode_animation < 720
hyper_scale=(1.75+(((mode<3)&&mode_animation<=720)*((
mode_animation*(mode_animation>=0))*-1+720)/720))

draw_text_transformed_color(room_width/2,room_height/1.5,"HYPER",
hyper_scale,hyper_scale,0,c_bittrip_purple,c_bittrip_purple,c_bittrip_purple,c_bittrip_purple,.25)

draw_text_transformed_color(room_width/2,room_height/1.25,"NETHER",
1.75,1.75,0,c_gray,c_gray,c_gray,c_gray,.25)

if bomb=1&&keyboard_check_pressed(vk_shift) { with core_beat_normal { instance_destroy() } with core_beat_orange { instance_destroy() } if mode > 0 caster_play(snd_core_bomb,1,1) bomb=0 }

if mode>1
megasuper_scale=
((image_index==19||image_index==49)*.343)+
((image_index==20||image_index==50)*.529)+
((image_index==21||image_index==51)*.657)+
((image_index==22||image_index==52)*.854)+
((image_index==23||image_index==53)*.924)+
((image_index==24||image_index==54)*.976)+
((image_index==25||image_index==55)*.988)+
((image_index==26||image_index==56)*.930)+
((image_index==27||image_index==57)*.877)+
((image_index==28||image_index==58)*.767)+
((image_index==29||image_index==59)*.651)+
((image_index==30||image_index==0)*.436)+
((image_index==31||image_index==1)*.308)

/*mega_scale=(((image_index-20)/20)*(image_index>20&&image_index<=40))+
(((image_index*-1+60)/20)*(image_index>40&&image_index<60))*/

draw_text_transformed_color(room_width/2,room_height/3,"MEGA",
megasuper_scale*(mode==2)+2,megasuper_scale*(mode==2)+2,0,
c_green,c_green,c_green,c_green,.25)

draw_text_transformed_color(room_width/2,room_height/5,"SUPER",
megasuper_scale*(mode==3)+2,megasuper_scale*(mode==3)+2,0,
c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,c_bittrip_cyan,.25)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_alpha(mode_animation<0)
draw_rectangle_color(0,mode_animation+600,
room_width,mode_animation+1440,make_color_rgb(15,15,15),make_color_rgb(15,15,15),make_color_rgb(15,15,15),make_color_rgb(15,15,15),false)

draw_set_alpha(1)

if (mode_animation>-360)
{
if floor(image_index/(room_speed/2)) > 0
draw_set_color(make_color_rgb(177,4,4))
else draw_set_color(make_color_rgb(141,3,3))
}
else draw_set_color(c_white)
for (i = -1; i < 3; i += 1) {
draw_rectangle((room_width/2-(8/((gameover>24)*(gameover-24)+1))-((i==1)*(581/((gameover>24)*(gameover-24)+1))+((i==2)*(581/((gameover>24)*(gameover-24)+1))*-1))),room_height/2-(24/((gameover>24)*(gameover-24)+1)),room_width/2+(7/((gameover>24)*(gameover-24)+1))-((i==1)*(581/((gameover>24)*(gameover-24)+1))+((i==2)*(581/((gameover>24)*(gameover-24)+1))*-1)),room_height/2+(23/((gameover>24)*(gameover-24)+1)),false)
draw_rectangle((room_width/2-(24/((gameover>24)*(gameover-24)+1))),room_height/2-(8/((gameover>24)*(gameover-24)+1))-((i==1)*(326/((gameover>24)*(gameover-24)+1))+((i==2)*(327/((gameover>24)*(gameover-24)+1))*-1)),room_width/2+(23/((gameover>24)*(gameover-24)+1)),room_height/2+(7/((gameover>24)*(gameover-24)+1))-((i == 1)*(326/((gameover>24)*(gameover-24)+1))+((i==2)*(327/((gameover>24)*(gameover-24)+1))*-1)),0)
draw_rectangle((room_width/2-(8/((gameover>24)*(gameover-24)+1))-((i==1)*(566/((gameover>24)*(gameover-24)+1))+((i==2)*(564/((gameover>24)*(gameover-24)+1))*-1))),room_height/2-(8/((gameover>24)*(gameover-24)+1)),room_width/2+(7/((gameover>24)*(gameover-24)+1))-((i==1)*(565/((gameover>24)*(gameover-24)+1))+((i==2)*(567/((gameover>24)*(gameover-24)+1))*-1)),room_height/2+(7/((gameover>24)*(gameover-24)+1)),false)
draw_rectangle((room_width/2-(8/((gameover>24)*(gameover-24)+1))),room_height/2-(8/((gameover>24)*(gameover-24)+1))-((i==1)*(310/((gameover>24)*(gameover-24)+1))+((i==2)*(311/((gameover>24)*(gameover-24)+1))*-1)),room_width/2+(7/((gameover>24)*(gameover-24)+1)),room_height/2+(7/((gameover>24)*(gameover-24)+1))-((i == 1)*(308/((gameover>24)*(gameover-24)+1))+((i==2)*(311/((gameover>24)*(gameover-24)+1))*-1)),0)}

if bot = 0 {
if (keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord('A'))) {
leftpressed=1 uppressed=0 downpressed=0 rightpressed=0 }
if (keyboard_check_released(vk_left)||keyboard_check_released(ord('A'))) leftpressed=0
if (keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord('W'))) {
leftpressed=0 uppressed=1 downpressed=0 rightpressed=0 }
if (keyboard_check_released(vk_up)||keyboard_check_released(ord('W'))) uppressed=0
if (keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord('D'))) {
leftpressed=0 uppressed=0 downpressed=0 rightpressed=1 }
if (keyboard_check_released(vk_right)||keyboard_check_released(ord('D'))) rightpressed=0
if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord('S'))) {
leftpressed=0 uppressed=0 downpressed=1 rightpressed=0 }
if (keyboard_check_released(vk_down)||keyboard_check_released(ord('S'))) downpressed=0 }

draw_set_color((c_white*!(beam>0))+
(make_color_rgb(255,100,3)*(beam>0)*(mode>0))+
(c_white*(beam>0)*(mode==0)))
draw_set_alpha((.125+((7/8)*(beam>0)))*(leftpressed>0))
draw_rectangle(room_width/2-8-549,room_height/2-8,
room_width/2+7-32,room_height/2+7,false)
draw_set_alpha((.125+((7/8)*(beam>0)))*(rightpressed>0))
draw_rectangle(room_width/2-8+563,room_height/2-8,
room_width/2+24,room_height/2+7,false)
draw_set_alpha((.125+((7/8)*(beam>0)))*(uppressed>0))
draw_rectangle(room_width/2-8,room_height/2-8-17,
room_width/2+7,room_height/2+7-307,false)
draw_set_alpha((.125+((7/8)*(beam>0)))*(downpressed>0))
draw_rectangle(room_width/2-8,room_height/2-8+32,
room_width/2+7,room_height/2+7+295,false)
if mode_animation<-360 {
tempvar01110011 = .25
for (i = 0; i < 8; i+=1) {
draw_set_alpha(tempvar01110011)
draw_rectangle_color(0,b_a_c_k_d_r_o_p.y+(mode_animation+720)-28,1280,
b_a_c_k_d_r_o_p.y+(mode_animation+720)-28+(i*9),c_black,c_black,c_black,c_black,false)
tempvar01110011 /= 1.5 }
}
draw_set_alpha(1)


for (k = -1; k < 2; k += 1) {
for (j = 0; j < 2; j += 1) {
for (i = 0; i < 2; i += 1) {
switch k {
case 0: draw_set_color(make_color_rgb(247,216,0)) break
case -1: draw_set_color(current_mega_colors[1]) break }
if k < 1 {
draw_rectangle((i*room_width)+(51+(i*-102)),(j*room_height)+(26+(j*-52))+(mode_animation+(k*720)),
(i*room_width)+(511+(i*-1022)),(j*room_height)+(44+(j*-88))+(mode_animation+(k*720)),false)
draw_rectangle((i*room_width)+(51+(i*-102)),(j*room_height)+(26+(j*-52))+(mode_animation+(k*720)),
(i*room_width)+(70+(i*-140)),(j*room_height)+(91+(j*-182))+(mode_animation+(k*720)),false) }
if (((hyper_up>0&&j=0)||(hyper_lose>0&&j=1))&&k=0)||(((mega_up>0&&j=0)||(mega_lose>0&&j=1))&&k=-1)||(((nether_up>0&&j=0)||(nether_lose>0&&j=1))&&k=1)
draw_healthbar((i*room_width)+(54+(i*(54*-2))),(j*room_height)+(28+(j*-56))+(mode_animation+(k*720)),(i*room_width)+(66+(i*-132)),(j*room_height)+(89+(j*-178))+(mode_animation+(k*720)),(((k=0)*((hyper_up/7)*(k==0&&j==0))+((hyper_lose/1.5)*(k==0&&j==1)))+((k=-1)*((mega_up/7)*(k==-1&&j==0))+((mega_lose)*(k==-1&&j==1)))+((k=1)*((nether_up/2)*(k==1&&j==0))+((nether_lose-.4)*(k==1&&j==1))))*100,0,make_color_rgb(40,158,169)+(make_color_rgb(255-40,255-158,255-169)*(k=1)),make_color_rgb(40,158,169)+(make_color_rgb(255-40,255-158,255-169)*(k=1)),3,0,0)
if (((hyper_up>6&&j=0)||(hyper_lose>1&&j=1))&&k=0)||(((mega_up>6&&j=0)||(mega_lose>0&&j=1))&&k=-1)||(((nether_up>1&&j=0)||(nether_lose>1&&j=1))&&k)
draw_healthbar((i*room_width)+(67+(i*-134)),(j*room_height)+(28+(j*-56))+(mode_animation+(k*720)),(i*room_width)+(509+(i*-1018)),(j*room_height)+(42+(j*-84))+(mode_animation+(k*720)),(((k=0)*((hyper_up-6)/58*(k==0&&j==0))+((hyper_lose-1.4)/12.4*(k==0&&j==1)))+((k=-1)*((mega_up-6)/58*(k==-1&&j==0))+((mega_lose-0.9)/7.1*(k==-1&&j==1)))+((k=1)*((nether_up-2)/18*(k==1&&j==0))+((nether_lose-2)/14.4*(k==1&&j==1))))*100,0,make_color_rgb(40,158,169)+(make_color_rgb(255-40,255-158,255-169)*(k=1)),make_color_rgb(40,158,169)+((make_color_rgb(255-40,255-158,255-169)*(k=1))),0,0,0)}}}

for (k = -2; k < 1; k += 1) {
draw_set_color(c_bittrip_cyan)
draw_set_font(global.fontx5[9])

draw_text_transformed(81,51+(mode_animation+(k*720)),
string_replace_all(string_format(score,10,0),' ','0'),1.75,1.75,0)

draw_set_font(global.fontx5[10])
draw_set_color(c_bittrip_pink)

draw_text_transformed(769,627+
(mode_animation+(k*720)),combo_str,1.75,1.75,0)
draw_text_transformed(966,627+
(mode_animation+(k*720)),'X',1.75,1.75,0)
draw_text_transformed(1046,627+
(mode_animation+(k*720)),string_replace_all
(string_format(multi,4,0),' ','0'),1.75,1.75,0)

draw_set_font(global.fontx4[3])
draw_set_color(make_color_rgb(255,108,0))
draw_text_transformed_color(1038,51+(mode_animation+(k*720)),"BOMB",
2.2,2.2,0,make_color_rgb(255,108,0),make_color_rgb(255,108,0),
make_color_rgb(255,108,0),make_color_rgb(255,108,0),.25+(bomb/1))}

if mode_animation>720
for (j = 0; j < 2; j += 1) {
for (i = 0; i < 2; i += 1) {
draw_rainbow((i*room_width)+(71+(i*-142)),(j*room_height)+(26+(i*18)+(j*-70))+mode_animation-1440,2203,19,384,256,i*2,true)
draw_rainbow((i*room_width)+(51+(i*-121)+(j*19)),(j*room_height)+(91+(j*-182))+mode_animation-1440,220,20,0,384,1+(j*2),true)}}

draw_set_alpha((gameover+win_-60)/60)
draw_rectangle_color(0,0,
room_width,room_height,0,0,0,0,false)

image_speed=room_speed/bpm

if image_index >= 60 image_index = 0

execute_string(drawcode)

