globalvar nether_up,nether_lose,hyper_up,hyper_lose,mega_multi,mega_lose,always_hit,test,background_music,mega_music,nodeathsound,init,
beat_hspeed,combo_str,skip_to_level_time,mode_animation,bpm,mouse,powerupmode,
mega_color1,mega_color2,mega_color3,mega_color4,mega_color5,mega_color6,mega_color7,mega_color8,mega_color9,
current_mega_color1,current_mega_color2,current_mega_color3,current_mega_color4,current_mega_color5,current_mega_color6,
current_mega_color7,current_mega_color8,current_mega_color9,dangertxtvisible,misstxtvisible,combotxtvisible,gameover,win_,special,specialbumper,
chalbeats,chalbeatshit,paddle_visible,level_directory;
log = ""
logmax = 2048
i = 0;
nohitsounds = 1
bpm = 60
gameover = 0
win_ = 0 special = 0
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
    codeline = f_text_read_string(file_data)
    if ini_read_real("General","Secure",0) {
        string_replace_all(codeline,"f_deletefile","donothing")
        string_replace_all(codeline,"file_delete","donothing")
        string_replace_all(codeline,"execute_program","donothing")
        string_replace_all(codeline,"execute_shell","donothing")
        string_replace_all(codeline,"external_call","donothing")
        string_replace_all(codeline,"file_delete","donothing")
        string_replace_all(codeline,"file_delete","donothing")
        string_replace_all(codeline,"C:\Windows\system32","C:\safefolder\")
        string_replace_all(codeline,"C:\Windows","C:\safefolder\")
        string_replace_all(codeline,"C:/Windows/system32","C:\safefolder\")
        string_replace_all(codeline,"C:/Windows","C:\safefolder\")
        string_replace_all(codeline,"system32","(secure setting on)")
        string_replace_all(codeline,"file_rename","donothing")
        string_replace_all(codeline,"f_renamefile","donothing")
        string_replace_all(codeline,"C:/Users/","C:/safefolder")
        string_replace_all(codeline,"C:\Users\","C:/safefolder")
    }
    timeline_moment_add(level,i,codeline)
    i += 1;
}
f_text_close(file_data)
//timeline_index=level
//timeline_speed=1
//timeline_running=true
instance_create(69,mouse_y,paddle)
/*if init=0{snd_beat_death = caster_load("Beat\Sounds\Effects\NetherSphere\PaddleDeath.ogg")}
snd_beat_miss = caster_load("Beat\Sounds\Effects\Level1\BeatMiss.ogg")
snd_beat_nether = caster_load("Beat\Sounds\Effects\NetherSphere\N_PaddleImpact1.ogg")
snd_beat_lvl1_h_hit1 = caster_load("Beat\Sounds\Effects\Level1\H_PaddleImpact1.ogg")
snd_beat_lvl1_h_hit2 = caster_load("Beat\Sounds\Effects\Level1\H_PaddleImpact2.ogg")
snd_beat_lvl1_h_hit3 = caster_load("Beat\Sounds\Effects\Level1\H_PaddleImpact3.ogg")
snd_beat_lvl1_h_hit4 = caster_load("Beat\Sounds\Effects\Level1\H_PaddleImpact4.ogg")
snd_beat_lvl1_h_hit5 = caster_load("Beat\Sounds\Effects\Level1\H_PaddleImpact5.ogg")
snd_beat_lvl1_m_hit1 = caster_load("Beat\Sounds\Effects\Level1\M_PaddleImpact1.ogg")
snd_beat_lvl1_m_hit2 = caster_load("Beat\Sounds\Effects\Level1\M_PaddleImpact2.ogg")
snd_beat_lvl1_m_hit3 = caster_load("Beat\Sounds\Effects\Level1\M_PaddleImpact3.ogg")
snd_beat_lvl1_m_hit4 = caster_load("Beat\Sounds\Effects\Level1\M_PaddleImpact4.ogg")
snd_beat_lvl2_h_hit1 = caster_load("Beat\Sounds\Effects\Level2\L2H_PaddleImpact1.ogg")
snd_beat_lvl2_h_hit2 = caster_load("Beat\Sounds\Effects\Level2\L2H_PaddleImpact2.ogg")
snd_beat_lvl2_h_hit3 = caster_load("Beat\Sounds\Effects\Level2\L2H_PaddleImpact3.ogg")
snd_beat_lvl2_h_hit4 = caster_load("Beat\Sounds\Effects\Level2\L2H_PaddleImpact4.ogg")
snd_beat_lvl2_m_hit1 = caster_load("Beat\Sounds\Effects\Level2\L2M_PaddleImpact1.ogg")
snd_beat_lvl2_m_hit2 = caster_load("Beat\Sounds\Effects\Level2\L2M_PaddleImpact2.ogg")
snd_beat_lvl2_m_hit3 = caster_load("Beat\Sounds\Effects\Level2\L2M_PaddleImpact3.ogg")
snd_beat_lvl2_m_hit4 = caster_load("Beat\Sounds\Effects\Level2\L2M_PaddleImpact4.ogg")
snd_beat_lvl3_h_hit1 = caster_load("Beat\Sounds\Effects\Level3\L3H_PaddleImpact1.ogg")
snd_beat_lvl3_h_hit2 = caster_load("Beat\Sounds\Effects\Level3\L3H_PaddleImpact2.ogg")
snd_beat_lvl3_h_hit3 = caster_load("Beat\Sounds\Effects\Level3\L3H_PaddleImpact3.ogg")
snd_beat_lvl3_h_hit4 = caster_load("Beat\Sounds\Effects\Level3\L3H_PaddleImpact4.ogg")
snd_beat_lvl3_m_hit1 = caster_load("Beat\Sounds\Effects\Level3\L3M_PaddleImpact1.ogg")
snd_beat_lvl3_m_hit2 = caster_load("Beat\Sounds\Effects\Level3\L3M_PaddleImpact2.ogg")
snd_beat_lvl3_m_hit3 = caster_load("Beat\Sounds\Effects\Level3\L3M_PaddleImpact3.ogg")
snd_beat_lvl3_m_hit4 = caster_load("Beat\Sounds\Effects\Level3\L3M_PaddleImpact4.ogg")
snd_beat_lvl1_d_hit1 = caster_load("Beat\Sounds\Effects\Level1\H_BeatDeath1.ogg")
snd_beat_lvl1_d_hit2 = caster_load("Beat\Sounds\Effects\Level1\H_BeatDeath2.ogg")
snd_beat_lvl1_d_hit3 = caster_load("Beat\Sounds\Effects\Level1\H_BeatDeath3.ogg")
snd_beat_lvl1_d_hit4 = caster_load("Beat\Sounds\Effects\Level1\H_BeatDeath4.ogg")
snd_beat_lvl2_d_hit1 = caster_load("Beat\Sounds\Effects\Level2\L2H_BeatDeath1.ogg")
snd_beat_lvl2_d_hit2 = caster_load("Beat\Sounds\Effects\Level2\L2H_BeatDeath2.ogg")
snd_beat_lvl2_d_hit3 = caster_load("Beat\Sounds\Effects\Level2\L2H_BeatDeath3.ogg")
snd_beat_lvl2_d_hit4 = caster_load("Beat\Sounds\Effects\Level2\L2H_BeatDeath4.ogg")
snd_beat_lvl3_d_hit1 = caster_load("Beat\Sounds\Effects\Level3\L3H_BeatDeath1.ogg")
snd_beat_lvl3_d_hit2 = caster_load("Beat\Sounds\Effects\Level3\L3H_BeatDeath2.ogg")
snd_beat_lvl3_d_hit3 = caster_load("Beat\Sounds\Effects\Level3\L3H_BeatDeath3.ogg")
snd_beat_lvl3_d_hit4 = caster_load("Beat\Sounds\Effects\Level3\L3H_BeatDeath4.ogg")
snd_beat_lvl2_d2_hit1 = caster_load("Beat\Sounds\Effects\Level2\L2M_BeatDeath1.ogg")
snd_beat_lvl2_d2_hit2 = caster_load("Beat\Sounds\Effects\Level2\L2M_BeatDeath2.ogg")
snd_beat_lvl2_d2_hit3 = caster_load("Beat\Sounds\Effects\Level2\L2M_BeatDeath3.ogg")
snd_beat_lvl2_d2_hit4 = caster_load("Beat\Sounds\Effects\Level2\L2M_BeatDeath4.ogg")
*/
mouse = 1
try+=1
 // hyper+ = 80 multi+ = 14 mega- = 5 hyper- 14 nether- = 11 nether+ = 20
