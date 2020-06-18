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
