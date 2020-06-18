globalvar nether_up,nether_lose,hyper_up,hyper_lose,mega_multi,mega_lose,super_lose,
beat_hspeed,combo_str,skip_to_level_time,mode_animation,bpm,bomb,ts
mega_color1,mega_color2,mega_color3,mega_color4,mega_color5,mega_color6,mega_color7,mega_color8,mega_color9,
current_mega_color1,current_mega_color2,current_mega_color3,current_mega_color4,current_mega_color5,current_mega_color6,
current_mega_color7,current_mega_color8,current_mega_color9,dangertxtvisible,misstxtvisible,combotxtvisible;
file_data = f_text_open(file,f_mode_read)
var i;
i = 0;
bpm = 60;
ts = 4
rainbow_speed=60;
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
timeline_clear(level)
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
instance_create(room_width/2,room_height/2,plus)
/*snd_core_miss = caster_load("Core\Sounds\Effects\Level1\BeatMiss.ogg")
snd_core_neither = caster_load("Core\Sounds\Effects\NetherSphere\N_PaddleImpact1.ogg")
snd_core_lvl1_h_hit1 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST1.ogg")
snd_core_lvl1_h_hit2 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST2.ogg")
snd_core_lvl1_h_hit3 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST3.ogg")
snd_core_lvl1_h_hit4 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST4.ogg")
snd_core_lvl1_h_hit5 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST5.ogg")
snd_core_lvl1_h_hit6 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST6.ogg")
snd_core_lvl1_h_hit7 = caster_load("Core\Sounds\Effects\Level1\L1H_BEATBLAST7.ogg")
snd_core_lvl1_m_hit1 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST1.ogg")
snd_core_lvl1_m_hit2 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST2.ogg")
snd_core_lvl1_m_hit3 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST3.ogg")
snd_core_lvl1_m_hit4 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST4.ogg")
snd_core_lvl1_m_hit5 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST5.ogg")
snd_core_lvl1_m_hit6 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST6.ogg")
snd_core_lvl1_m_hit7 = caster_load("Core\Sounds\Effects\Level1\L1M_BEATBLAST7.ogg")*/
 // hyper+ = 80 multi+ = 14 mega- = 5 hyper- 14 neither- = 11 neither+ = 20
try+=1
