if gameover=0{
if nowin=1 { hyper_up = 0 mega_up = 0 nether_up = 0 }

if keyboard_check_pressed(219) {
if mode = 3 {
   mode = 2
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
   mega_up = 0
   mega_lose = 0
   exit
}

if mode = 1 {
   mode = 0
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
   nether_up = 0
   nether_lose = 0
   exit
}

if mode = 2 {
   mode = 1
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
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
   caster_play(snd_mode_up,1,1)
   plus.alarm[0]=1
   mode = 3
   super_lose=0
}
if mode = 1 {
   caster_play(snd_mode_up,1,1)
   plus.alarm[0]=1
   mode = 2
   mega_up=0
   mega_lose=0
}
if mode = 0 {
   caster_play(snd_mode_up,1,1)
   plus.alarm[0]=1
   mode = 1
   hyper_up=0
   hyper_lose=0
}
}

if combo >= 10 { switch difficulty { case 0: combo_str = string_replace_all(string_format(combo+50,4,0),' ','0') break case 1: combo_str = string_replace_all(string_format(combo+100,4,0),' ','0') break } }
if combo < 10 { switch difficulty { case 0: combo_str = "0050" break case 1: combo_str = "0100" break } }

if keyboard_check_pressed(187) { core_hit() }
if keyboard_check_pressed(189) { core_miss() }

if beam>0 beam-=1

if bot = 0 {
if keyboard_check_pressed(vk_space)
    if keyboard_check(vk_left) || keyboard_check(ord('A')) ||
       keyboard_check(vk_up) || keyboard_check(ord('W')) ||
       keyboard_check(vk_right) || keyboard_check(ord('D')) ||
       keyboard_check(vk_down) || keyboard_check(ord('S'))
    beam = 7
} else {
for (i = 0; i < 4; i += 1) if core_beam(i,core_beat_base) != noone { bot_beam = i beam = 6 break }
switch bot_beam {
  case 0: leftpressed = 1 uppressed = 0 rightpressed = 0 downpressed = 0 break
  case 1: leftpressed = 0 uppressed = 1 rightpressed = 0 downpressed = 0 break
  case 2: leftpressed = 0 uppressed = 0 rightpressed = 1 downpressed = 0 break
  case 3: leftpressed = 0 uppressed = 0 rightpressed = 0 downpressed = 1 break
  }
}

for (j = 0; j < 100; j += 1) {
if beam > 0 {
__hit = core_beam(((!uppressed&&!leftpressed&&!rightpressed&&!downpressed)*-1)
+(uppressed)
+((rightpressed)*2)
+((downpressed)*3),core_beat_base)
if __hit != noone
with __hit {
switch type
{
	case 0:
		core_hit() plus.__hitonce = 1 instance_destroy()
		break
	case 1:
	// TODO: prevent from being hit again while beam was active from the first hit
		if hit_ticker = 0 { hit_ticker = beam core_hit()
		if hit <= 0 hit = hits else hit -= 1 lifetime += lifetimeplus speed *= -1
		if keepsp = 0 speed = 0 if hit = 1 instance_destroy() } __hitonce = 1
		if __hitonce = 0 && plus.beam = 1 { if plus.combo >= 10 misstxt = instance_create(plus.x+4,plus.y+4,core_particle_miss) plus.combo = 0 }
		break
}
}
}
if bot = 1 {
if beam <= 1 { leftpressed = 0 uppressed = 0
rightpressed = 0 downpressed = 0 }
if beam = 0 __hitonce = 0 }
}

if image_index >= room_speed+(60-room_speed) - 1
{
measure += 1

if mode=0
	{
	if measure mod ts
		caster_play(snd_nether_tick2,1,1)
	else
		caster_play(snd_nether_tick,1,1)
	}
}

rainbow_index += 1

if rainbow_index = rainbow_speed rainbow_index = 0

caster_set_volume(mega_music,mode-1)

if paused { timeline_running = false } else { timeline_running = true }

if gameover=1{music_stop()caster_play(snd_death,1,1)instance_create(0,0,endgamefade)lastgame=core}

if gameover>0{gameover+=1}

if gameover>120{room_goto(gameoverscr)}

if win_=1 {instance_create(0,0,endgamefade)}

if win_>0 {win_+=1}

if win_>120 {room_goto(finalscore)}

execute_string(stepcode)

}
/*__hit = core_beam(((keyboard_check(vk_up)||keyboard_check(ord('W'))))
+((keyboard_check(vk_right)||keyboard_check(ord('D')))*2)
+((keyboard_check(vk_down)||keyboard_check(ord('S'))))*3,core_beat_normal)/*
