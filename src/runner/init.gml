globalvar beat_hspeed,combo_str,skip_to_level_time,mode_animation,bpm,runner_gravity
mega_color1,mega_color2,mega_color3,mega_color4,mega_color5,mega_color6,mega_color7,mega_color8,mega_color9,
current_mega_color1,current_mega_color2,current_mega_color3,current_mega_color4,current_mega_color5,current_mega_color6,
current_mega_color7,current_mega_color8,current_mega_color9,dangertxtvisible,misstxtvisible,combotxtvisible,level_directory;
file_data = f_text_open(file,f_mode_read)
var i;
i = 0;
bpm = 60;
instance_create(0,0,b_a_c_k_d_r_o_p)
mega_color1=make_color_rgb(198,67,153)
mega_color2=make_color_rgb(230,120,162)
mega_color3=make_color_rgb(0,158,145)
mega_color4=make_color_rgb(126,130,255)
mega_color5=make_color_rgb(251,205,0)
mega_color6=make_color_rgb(184,252,253)
mega_color7=make_color_rgb(255,164,0)
mega_color8=make_color_rgb(252,245,75)
mega_color9=make_color_rgb(50,154,167)
current_mega_color1=mega_color1
current_mega_color2=mega_color2
current_mega_color3=mega_color3
current_mega_color4=mega_color4
current_mega_color5=mega_color5
current_mega_color6=mega_color6
current_mega_color7=mega_color7
current_mega_color8=mega_color8
current_mega_color9=mega_color9
file_data = f_text_open(file,f_mode_read)
timeline_clear(level)
for (j = 0; j < string_length(file); j += 1) {
  if string_char_at(file,j) = "\" || string_char_at(file,j) = "/"
    k = j
}
level_directory = string_copy(file,0,k)
while !f_text_eof(file_data)
{
    f_text_readline(file_data)
    timeline_moment_add(level,i,f_text_read_string(file_data))
    i += 1;
}
f_text_close(file_data)
timeline_index=level
timeline_speed=1
timeline_running=true
instance_create(room_width/6,room_height/1.5,player)
instance_create(0,0,runner_stage)
runner_gravity=.1
try+=1
