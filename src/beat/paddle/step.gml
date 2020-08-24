if gameover=0{
switch special
{
  case 0:
    specialbumper = 0
    break
  case 1:
    specialbumper = 16
    break
  case 2:
    specialbumper = -8
    break
  case 0:
    specialbumper = 0
    break
}
if !bot && mouse
{
  if !controltype {
  y = mouse_y
  if y < 136 + specialbumper y = 136 + specialbumper
  if special = 3 && y < 136 + 112 y = 136 + 112
  if y > 584 - specialbumper y = 584 - specialbumper
  //if special = 3 && y > 586 y = 586
  if mouse_y < 136 + specialbumper window_mouse_set(mouse_x,
  (136 + specialbumper) * (window_get_height()/720))
  if special = 3 && mouse_y < 136 + 112 window_mouse_set(mouse_x, 136 + 112)
  if mouse_y > 584 - specialbumper window_mouse_set(mouse_x,
  (584 - specialbumper) * (window_get_height()/720))
  //if special = 3 && mouse_y > 586 window_mouse_set(mouse_x, 586)
  window_mouse_set(640, mouse_y*(window_get_height()/720)) }
  else {
  y += mouse_y - 360//(window_get_height()/720)
  if y < 136 + specialbumper y = 136 + specialbumper
  if special = 3 && y < 136 + 112 y = 136 + 112
  if y > 584 - specialbumper y = 584 - specialbumper
  //if special = 3 && y > 586 y = 586
  window_mouse_set(640, window_get_height()/2)
  }
  window_set_cursor(cr_none)
}
else if bot
{
  window_set_cursor(cr_default)
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_normal,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_normal,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y if flip = 0 y=room_height/2}
  /*nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_green,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_green,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,80,584 - specialbumper,beat_beat_orange,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_orange,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_cyan,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_cyan,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_still,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_still,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_powerup,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_powerup,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_follow,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_follow,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}*/
}

if !mouse
{
  if y < 135 + specialbumper y = 136 + specialbumper
  if special = 3 && y < 136 + 112 y = 136 + 112
  if y > 585 - specialbumper y = 584 - specialbumper
  window_set_cursor(cr_default)
}

if nowin=1 { hyper_up = 0 mega_multi = 0 nether_up = 0 }

if keyboard_check_pressed(219) {
if mode = 1 {
   mode = 0
   caster_play(snd_mode_down,1,1)
   //paddle.alarm[11]=1
   mega_multi = 0
   mega_lose = 0
   exit
}

if mode = 2 {
   mode = 1
   caster_play(snd_mode_down,1,1)
   //paddle.alarm[10]=1
   hyper_up = 0
   hyper_lose = 0
   multi=1
   exit
}

if mode = 0 {
   lose()
}
}

if keyboard_check_pressed(221) {
if mode = 2 {
   mega_multi=0
   caster_play(snd_mode_multi,1,1)
   multi += 1;
}
if mode = 1 {
   caster_play(snd_mode_up,1,1)
   //alarm[0]=1
   mode = 2
   mega_multi=0
   mega_lose=0
}
if mode = 0 {
   caster_play(snd_mode_up,1,1)
   //alarm[11]=1
   mode = 1
   hyper_up=0
   hyper_lose=0
}
}

if (mode = 0 && mode_animation > -720) mode_animation -= 48
if (mode = 1 && mode_animation < 0) mode_animation += 48
if (mode = 1 && mode_animation > 0) mode_animation -= 48
if (mode = 2 && mode_animation < 720) mode_animation += 48	

if special = 0
  sprite_index = paddle_coll
else if special = 1
  sprite_index = paddle_big_coll
else if special = 2
  sprite_index = paddle_chal_coll
else if special = 3
  sprite_index = paddle_dual_coll

if test = 0 room_caption = "BIT . TRIP BEAT"
else room_caption = "WE'VE GOT SOME TESTING TO DO"

if combo >= 10 { switch difficulty { case 0: combo_str = string_replace_all(string_format(combo+50,4,0),' ','0') break case 1: combo_str = string_replace_all(string_format(combo+100,4,0),' ','0') break } }
if combo < 10 { switch difficulty { case 0: combo_str = "0050" break case 1: combo_str = "0100" break } }

if keyboard_check_pressed(187) { beat_hit() }
if keyboard_check_pressed(189) { beat_miss() }

caster_set_volume(mega_music,mode-1)

if paused { timeline_running = false } else { timeline_running = true }}

if gameover=1{music_stop()caster_play(snd_death,1,1)instance_create(0,0,endgamefade)}

if gameover>0{gameover+=1}

if gameover>120{room_goto(gameoverscr)}

if win_=1 {instance_create(0,0,endgamefade)}

if win_>0 {win_+=1}

if win_>120 {room_goto(finalscore)}

realframe+=1

for (i=1;i<10;i+=1)
current_mega_colors[i] = mega_colors[(floor(realframe/bpm)+i) mod 9+1]

//for (i=0;i<12;i+=1)
//{
	//if alarm[i]=-1 execute_file(path_src+"beat/paddle/alarms/"+string(i)+".gml") // maybe figure out !realtimesrc or whatever for this
//}
// why arent alarms working here
// alarms apparently werent moving while watching the variables

// figure out keyboard events and others

// vague af programmatic practices >:(

if keyboard_check(ord('8')) tempvar+=1
if keyboard_check_released(ord('8')) { beat_beat(8,mouse_y,10,0,tempvar) tempvar=0 }

if keyboard_check_pressed(vk_enter) if !playtest_mode {
message_size(290,64)
message_position(window_get_x()+(window_get_width()/2.5),window_get_y()+(window_get_height()/2.125))
caster_pause(background_music)caster_pause(mega_music)
if enablesounds=1 caster_play(snd_pause,1,1)
switch show_message_ext("","Continue","Restart","Quit")
{
    case 1: if enablesounds=1 caster_play(snd_unpause,1,1) caster_resume(background_music) caster_resume(mega_music) break
    case 2: music_stop() caster_set_volume(background_music,0) room_restart() break
    case 3: game_end() break
}
} else { playtest_mode=false designer_mode=true music_stop() room_goto(designer) }

if keyboard_check_pressed(ord('1')) beat_beat(0,mouse_y,10,0)
if keyboard_check_pressed(ord('2')) beat_beat(1,mouse_y,10,0,random_range(0,5),random_range(-5,5))
if keyboard_check_pressed(ord('6')) beat_beat(6,mouse_y,10,0,random_range(10,50),mouse_y)
if keyboard_check_pressed(ord('B')) bot=!bot
if keyboard_check_pressed(ord('C')) bgcolor=get_color(0)
if keyboard_check_pressed(ord('D')) difficulty=!difficulty
if keyboard_check_pressed(ord('M')) mouse=!mouse
if keyboard_check_pressed(ord('N')) nofail=!nofail
if keyboard_check_pressed(ord('R')) {music_stop()timeline_running=true;paused=false;room_restart()}
if keyboard_check_pressed(ord('S')) if soundtype<2{soundtype+=1}else{soundtype=0}
if keyboard_check_pressed(ord('T')) if !designer_mode test=!test
if keyboard_check_pressed(ord('W')) nowin=!nowin
if keyboard_check_pressed(vk_f7) {message_size(320,120)
execute_string(get_string("Execute any code:",""))}

if bot = 0 && mouse = 0 {
if keyboard_check_pressed(vk_up) if y >= 135 vspeed-=KBsensitivity
if keyboard_check_pressed(vk_down) if y >= 585 vspeed+=KBsensitivity
if keyboard_check_released(vk_up) vspeed+=KBsensitivity
if keyboard_check_released(vk_down) vspeed-=KBsensitivity
}

if stepcode != "" execute_string(stepcode)

