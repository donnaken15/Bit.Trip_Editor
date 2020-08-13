globalvar nether_up,nether_lose,hyper_up,hyper_lose,mega_multi,mega_lose,always_hit,test,background_music,mega_music,nodeathsound,init,
beat_hspeed,combo_str,skip_to_level_time,mode_animation,bpm,mouse,powerupmode,
mega_colors,current_mega_colors,dangertxtvisible,misstxtvisible,combotxtvisible,gameover,win_,special,specialbumper,
chalbeats,chalbeatshit,paddle_visible,level_directory,controltype,mouse;
nohitsounds = 1
gameover = 0
win_ = 0 special = 0
controltype = ini_read_real("Beat","ControlType",0)
mouse = ini_read_real("Beat","Mouse",1)
// 0 = relative, 1 = absolute
game_init_default()
instance_create(69,mouse_y,paddle)
try+=1
 // hyper+ = 80 multi+ = 14 mega- = 5 hyper- 14 nether- = 11 nether+ = 20
