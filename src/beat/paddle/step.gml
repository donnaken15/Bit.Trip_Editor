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
if bot = 0 && mouse = 1
{
  y = mouse_y
  if mouse_y < 136 + specialbumper y = 136 + specialbumper
  if special = 3 && mouse_y < 136 + 112 y = 136 + 112
  if mouse_y > 584 - specialbumper y = 584 - specialbumper
  //if special = 3 && mouse_y > 586 y = 586
  if mouse_y < 136 + specialbumper window_mouse_set(mouse_x,
  (136 + specialbumper) * (window_get_height()/720))
  if special = 3 && mouse_y < 136 + 112 window_mouse_set(mouse_x, 136 + 112)
  if mouse_y > 584 - specialbumper window_mouse_set(mouse_x,
  (584 - specialbumper) * (window_get_height()/720))
  //if special = 3 && mouse_y > 586 window_mouse_set(mouse_x, 586)
  window_mouse_set(640, mouse_y*(window_get_height()/720))
  window_set_cursor(cr_none)
}
else if bot = 1 || bot = true
{
  window_set_cursor(cr_default)
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_normal,false,false)
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_normal,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y}
  nearest_beat = collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_green,false,false)
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
  if collision_rectangle(45,136 + specialbumper,72,584 - specialbumper,beat_beat_follow,false,false) && (nearest_beat.hit = 0 || nearest_beat.hit >= 2) {y=nearest_beat.y if flip = 0 y=room_height/2}
}

if mouse = 0
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
   paddle.alarm[11]=1
   mega_multi = 0
   mega_lose = 0
   exit
}

if mode = 2 {
   mode = 1
   caster_play(snd_mode_down,1,1)
   paddle.alarm[10]=1
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
   paddle.alarm[0]=1
   mode = 2
   mega_multi=0
   mega_lose=0
}
if mode = 0 {
   caster_play(snd_mode_up,1,1)
   paddle.alarm[12]=1
   mode = 1
   hyper_up=0
   hyper_lose=0
}
}

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

execute_string(stepcode)

