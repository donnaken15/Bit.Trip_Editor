if (lifetime <= 0) { if !designer_mode core_miss() instance_destroy() }
if gameover>0{speed=0hspeed=0vspeed=0}
lifetime-=1
if type = 2 {
if hit_ticker > 0 hit_ticker -= 1
if (hit > 1) { hspeed -= bouncex / 10 vspeed -= bouncey / 10 }
}