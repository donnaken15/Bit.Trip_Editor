globalvar nether_up,nether_lose,hyper_up,hyper_lose,mega_up,mega_lose,super_lose,super_up,ultra_lose,
beat_hspeed,combo_str,skip_to_level_time,bpm,misstxtvisible,combotxtvisible,size;
ts = 4
rainbow_speed=60;
game_init_default()
bgcolor = make_color_rgb(127,127,127)
instance_create(room_width/2,room_height/2,vortex)
 // hyper+ = 32 multi+ = 64? mega- = 5 hyper- = 6 nether- = 6 neither+ = 20 super- = 2 super+ = 196?
try+=1
