globalvar beat_hspeed,combo_str,skip_to_level_time,mode_animation,bpm,runner_gravity
mega_colors,current_mega_colors,dangertxtvisible,misstxtvisible,combotxtvisible,level_directory;
file_data = f_text_open(file,f_mode_read)
var i;
i = 0;
bpm = 60;
instance_create(0,0,b_a_c_k_d_r_o_p)
game_init_default()
instance_create(room_width/6,room_height/1.5,player)
instance_create(0,0,runner_stage)
runner_gravity=.1
try+=1
