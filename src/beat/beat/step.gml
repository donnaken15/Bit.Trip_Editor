
/// PLEASE CUT ALL THIS CRAP DOWN LATER PLEEEAAASSSEEEEEE
/// MY EEEEEYYYYEEEEESSSSS

if gameover<1 {

switch type {
	case 0:
	case 99:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		if type=99 execute_string(stepcode_)
		break
	case 1:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || (always_hit=1 && hit = 0) ))
		{ x = paddle.x+(69*designer_mode)+15 hspeed = origspeed if !designer_mode beat_hit() hit = hits vspeed = 0 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit > 1 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit > 1 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit > 1 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit > 1) || (always_hit=1 && hit > 1) ))
		{ hspeed = origspeed if !designer_mode beat_hit() hit -= 1 if keepvsp = 0 vspeed = 0 }
		if (hit > 1) { hspeed -= bouncex / 10 vspeed -= bouncey / 10 }
		/*if (hit = 3) { hspeed -= bouncex2 / 10 vspeed -= bouncey2 / 10 }
		if (hit = 4) { hspeed -= bouncex3 / 10 vspeed -= bouncey3 / 10 }
		if (hit = 5) { hspeed -= bouncex4 / 10 vspeed -= bouncey4 / 10 }
		if (hit = 6) { hspeed -= bouncex5 / 10 vspeed -= bouncey5 / 10 }
		if (hit = 7) { hspeed -= bouncex6 / 10 vspeed -= bouncey6 / 10 }
		if (hit = hits) hit = 1*/
		break
	case 3:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && flip = 0 && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		|| ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && flip = 1 && ((((y *-1 + 720) >= paddle.y-39
		&& (y *-1 + room_height) <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| ((y *-1 + room_height) >= paddle.y-39-16 && (y *-1 + room_height) <= paddle.y+39+16 && hit = 0 && special = 1)
		|| ((y *-1 + room_height) >= paddle.y-39+8 && (y *-1 + room_height) <= paddle.y+39-8 && hit = 0 && special = 2)
		|| ((y *-1 + room_height) >= paddle.y-114-39 && (y *-1 + room_height) <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 )))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 vspeed = 0 }
		if hit != 1 y += (paddle.y - y) / follow
		break
	case 4:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		break
	case 6:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) if firstbouncecomplete = 0 { originalspeed = vspeed firstbouncecomplete = 1 } vspeed = originalspeed*-1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		/*if bounce > 0 && bouncespeed > 0 */vspeed += bounce / bouncespeed
		/*else if bounce < 0 && bouncespeed < 0 vspeed -= */
		break
	case 8:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		{ vspeed = 0 x = paddle.x+(69*designer_mode)+16 hspeed = 0 alarm[0] = staytime if !designer_mode beat_hit() hit = 1 }
		if alarm[0] > -1 alarm[0] -= 1 if alarm[0] = 0 speed = originalspeed*-1
		break
	case 10:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		/*if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }*/
		y = ystart+(sin((sineframes*velocity)/10)*sineheight)
		sineframes += 1
		// i hate this beat so much
		break
	case 11:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		{ caster_play(snd_powerup,1,1) hit = 1 if !designer_mode beat_hit() alarm[1]=poweruptime*.75
		if mode>0 instance_create(x,y,beat_particle_mega_hit) special = powerup + 1
		alarm[0] = poweruptime visible = false hspeed = 0
		if powerup = 1 { chaltxt=object_add()
		object_event_add(chaltxt,ev_create,0,
		'alpha_=1')
		object_event_add(chaltxt,ev_step,0,
		'alpha_-=0.01if alpha_<=0{instance_destroy()}')
		object_event_add(chaltxt,ev_draw,0,
		"draw_set_font(global.fontx1[2])draw_set_halign(fa_center)draw_set_valign(fa_center)
		draw_text_transformed_color(x,y,'CHALLENGE',24,24,0,c_bittrip_pink,
		c_bittrip_pink,c_bittrip_pink,c_bittrip_pink,alpha_)")
		instance_create(room_width/2,room_height/3,chaltxt)
		chalbeatshit=0}}
		if alarm[1] > -1 alarm[1] -= 1 if alarm[1] = 0 { paddle_visible = !paddle_visible alarm[1]=1 }
		if alarm[0] > -1 alarm[0] -= 1
		if alarm[0] = 0 {
			if special = powerup + 1
			{
				if special = 2
				{
					caster_play(snd_challenge,1,1)
					instance_create(room_width/2,room_height/2,beat_challenge_finish)
					score += chalbeatshit * 10000
				}
				special = 0
			}
			paddle_visible=1
			instance_destroy()
		}
		break
	case 9:
		if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
		&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
		&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
		|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
		|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
		|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		
		image_index+=1
		if image_index>(bpm/flashrate)*2 image_index=0
		break
}
if (x < 0) { if !designer_mode beat_miss() instance_destroy() }
if (x > 1280+(15/2)) { instance_destroy() }
}
else {speed=0hspeed=0vspeed=0}

/*
if gameover<1{

if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce)
if type=6 { if firstbouncecomplete = 0 { originalspeed = vspeed firstbouncecomplete = 1 } vspeed = originalspeed*-1 }
else vspeed *= -1 }

switch type {
	case 0:
	case 6:
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || always_hit=1 ))
		{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
		break
	case 1:
		// merge this for other beats and optimize stuff
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || (always_hit=1 && hit = 0) ))
		{ x = paddle.x+(69*designer_mode)+15 hspeed = origspeed if !designer_mode beat_hit() hit = hits vspeed = 0 }
		if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && (beat_coll() || (always_hit=1 && hit > 1) ))
		{ hspeed = origspeed if !designer_mode beat_hit() hit -= 1 if keepvsp = 0 vspeed = 0 }
		if (hit > 1) { hspeed -= bouncex / 10 vspeed -= bouncey / 10 }
		/*if (hit = 3) { hspeed -= bouncex2 / 10 vspeed -= bouncey2 / 10 }
		if (hit = 4) { hspeed -= bouncex3 / 10 vspeed -= bouncey3 / 10 }
		if (hit = 5) { hspeed -= bouncex4 / 10 vspeed -= bouncey4 / 10 }
		if (hit = 6) { hspeed -= bouncex5 / 10 vspeed -= bouncey5 / 10 }
		if (hit = 7) { hspeed -= bouncex6 / 10 vspeed -= bouncey6 / 10 }
		if (hit = hits) hit = 1* /
		break
}
//speed=originalspeed*-1
/// ???
if type=3 {
	if hit != 1 y += (paddle.y - y) / follow
	if gameover<1{if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
	&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) vspeed *= -1 }
	if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && flip = 0 && ((y >= paddle.y-39
	&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
	|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
	|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
	|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 ))
	|| ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && flip = 1 && ((((y *-1 + 720) >= paddle.y-39
	&& (y *-1 + room_height) <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
	|| ((y *-1 + room_height) >= paddle.y-39-16 && (y *-1 + room_height) <= paddle.y+39+16 && hit = 0 && special = 1)
	|| ((y *-1 + room_height) >= paddle.y-39+8 && (y *-1 + room_height) <= paddle.y+39-8 && hit = 0 && special = 2)
	|| ((y *-1 + room_height) >= paddle.y-114-39 && (y *-1 + room_height) <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1 )))
	{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
	if (x < 0) { beat_miss() instance_destroy() }
	if (x > 1280+(15/2)) { instance_destroy() }}
	else{speed=0hspeed=0vspeed=0}
	if hit != 1 y += (paddle.y - y) / follow
}

if type=6 vspeed += bounce / bouncespeed

if (x < 0) { if !designer_mode beat_miss() instance_destroy() }
if (x > 1280+(15/2)) { instance_destroy() }

}else{speed=0hspeed=0vspeed=0}