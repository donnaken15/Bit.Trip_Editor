if gameover<1{if (y >= 600 - (15/2) - (vspeed*.3) || y <= 120 + (15/2) + (vspeed*-.3))
&& (x >= 70 && x <= 1219) { if mode = 2 && vspeed != 0 instance_create(x,y,beat_particle_mega_bounce) if firstbouncecomplete = 0 { originalspeed = vspeed firstbouncecomplete = 1 } vspeed = originalspeed*-1 }
if ((x >= 69-16-(hspeed*-.8) && x <= 69+16+(hspeed*-.8)) && ((y >= paddle.y-39
&& y <= paddle.y+39 && hit = 0 && special != 1 && special != 2)
|| (y >= paddle.y-39-16 && y <= paddle.y+39+16 && hit = 0 && special = 1)
|| (y >= paddle.y-39+8 && y <= paddle.y+39-8 && hit = 0 && special = 2)
|| (y >= paddle.y-114-39 && y <= paddle.y-82+7 && special = 3 && hit = 0) || always_hit=1))
{ hspeed *= -1 if !designer_mode beat_hit() hit = 1 }
if (x < 0) { if !designer_mode beat_miss() instance_destroy() }
if (x > 1280+(15/2)) { instance_destroy() }
/*if bounce > 0 && bouncespeed > 0 */vspeed += bounce / bouncespeed
/*else if bounce < 0 && bouncespeed < 0 vspeed -= */}else{speed=0hspeed=0vspeed=0}
