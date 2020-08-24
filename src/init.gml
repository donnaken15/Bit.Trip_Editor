window_set_visible(false)
globalvar file, file_data, combo, multi, mode, difficulty,
nofail, bot, stopped, background_music, paused, mega_music,
soundtype, stepcode, drawcode, nowin, KBsensitivity, windows,
winid, designer_mode, init, updateout, rainbow_index, rainbow_speed,
showscore, showmodes, showcombo, showmulti, showbars, showpaddletext, showpaddle,
showparticles, background_music_free, try, lastgame, lastmusicfile, enablesounds,
realtimesrc, loadonce, enable_error_logs, errlog, errlogpath, realframe, bpm, bgcolor, discord_rpc,
path_root,path_src,
path_gfx,path_sfx,
path_mus,path_bin
;

path_root = program_directory+"/"
path_src = path_root+"src/"
path_gfx = path_root+"gfx/"
path_sfx = path_root+"sfx/"
path_scr = path_src+"scr/"

showscore = 1 showmodes = 1 showcombo = 1 showmulti = 1 showbars = 1 showpaddletext = 1 showpaddle = 1
background_music_free=1 init = 1
lastmusicfile = ""
message_background(blankbg)
message_caption(false,"")

// global graphics
{
	// GAMEMAKER PLZ FREE ME FROM THIS
	sprite_replace(fontspr,path_gfx+"font/x1.png",94,0,0,0,0)
	sprite_replace(fontsprX2,path_gfx+"font/x2.png",94,0,0,0,0)
	sprite_replace(fontsprX3,path_gfx+"font/x3.png",94,0,0,0,0)
	sprite_replace(fontsprX4,path_gfx+"font/x4.png",94,0,0,0,0)
	sprite_replace(fontsprX5,path_gfx+"font/x5.png",94,0,0,0,0)
	sprite_replace(gameoverspr,path_gfx+"gameover.png",0,0,0,0,0)
}

// GAMEMAKER PLZ FREE ME FROM THIS
for (i = 0; i < 100; i += 1)
{global.fontx1[i] = font_add_sprite(fontspr,ord('!'),true,i)
global.fontx2[i] = font_add_sprite(fontsprX2,ord('!'),true,i)
global.fontx3[i] = font_add_sprite(fontsprX3,ord('!'),true,i)
global.fontx4[i] = font_add_sprite(fontsprX4,ord('!'),true,i)
global.fontx5[i] = font_add_sprite(fontsprX5,ord('!'),true,i)}

stepcode = ""
drawcode = ""

stopped = false

ini_open(path_root+"\settings.ini")
difficulty = ini_read_real("General","Difficulty",1)
nofail = ini_read_real("General","Nofail",0)
bot = ini_read_real("General","Bot",0)
soundtype = ini_read_real("General","Defaultsoundtype",0)
updateout = !ini_read_real("General","Updatenotif",1)
test = ini_read_real("Beat","Test",0)
KBsensitivity = ini_read_real("Beat","KBsensitivity",0)
execute_string(ini_read_string("General","Autoexec",""))
//display_reset(ini_read_real("General","Antialiasing",0))
window_set_region_scale(ini_read_real("General","Scale",-0.01),true)
window_set_fullscreen(ini_read_real("General","Fullscreen",0))
set_synchronization(ini_read_real("General","Verticalsync",0))
window_set_region_size(ini_read_real("General","Width",1280),ini_read_real("General","Height",720),true)
realtimesrc = ini_read_real("General","RealtimeSrc",0)
loadonce = ini_read_real("General","LoadOnce",1)
enable_error_logs = ini_read_real("General","LogErrors",1)
discord_rpc = ini_read_real("General","DiscordRPC",1)
window_center()

if enable_error_logs {
errlogpath = path_root+"error.log"
errlog = f_text_open(errlogpath,f_mode_write)
}

combo = 0
multi = 1
mode = 1
score = 0
set_application_title("BIT . TRIP EDITOR")
set_automatic_draw(true)
bpm = 60

globalvar skip_scr,skiprel_scr,set_bg_color_scr,toggle_scr,pause_scr,
lose_scr,win_scr,nosounds_scr,sounds_scr,recursion_scr,draw_rainbow_scr,
load_level_scr,timeline_load_scr,file_text_read_all_scr,newline_scr,
music_scr,music_loop_scr,music_mega_scr,music_mega_loop_scr,music_play_scr,music_stop_scr,
get_code_scr,get_code_scr
;

if !realtimesrc {
file_text_read_all_scr =
	execute_file(path_scr+"file_text_read_all.gml",path_scr+"file_text_read_all.gml")
get_code_scr = file_text_read_all(path_scr+"get_code.gml")
}
else {
file_text_read_all_scr = path_scr+"file_text_read_all.gml"
get_code_scr = path_scr+"get_code.gml" }

skip_scr = get_code(path_scr+"skip.gml")
skiprel_scr = get_code(path_scr+"skiprel.gml")
set_bg_color_scr = get_code(path_scr+"set_bg_color.gml")
toggle_scr = get_code(path_scr+"toggle.gml")
pause_scr = get_code(path_scr+"pause.gml")
lose_scr = get_code(path_scr+"lose.gml")
win_scr = get_code(path_scr+"win.gml")
nosounds_scr = get_code(path_scr+"nosounds.gml")
sounds_scr = get_code(path_scr+"sounds.gml")
seconds_scr = get_code(path_scr+"seconds.gml")
recursion_scr = get_code(path_scr+"recursion.gml")
draw_rainbow_scr = get_code(path_scr+"draw_rainbow.gml")
load_level_scr = get_code(path_scr+"load_level.gml")
timeline_load_scr = get_code(path_scr+"timeline_load.gml")
newline_scr = get_code(path_scr+"newline.gml")
setup_game_scr = get_code(path_scr+"setup_game.gml")
//beat_text_particle_scr = get_code(path_scr+"beat_text_particle.gml")
//game_init_default_scr = get_code(path_scr+"game_init_default.gml")

music_scr = get_code(path_scr+"music/hyper.gml")
music_loop_scr = get_code(path_scr+"music/hyper_loop.gml")
music_mega_scr = get_code(path_scr+"music/mega.gml")
music_mega_loop_scr = get_code(path_scr+"music/mega_loop.gml")
music_play_scr = get_code(path_scr+"music/play.gml")
music_stop_scr = get_code(path_scr+"music/stop.gml")

// global objs
{
	object_event_add(b_a_c_k_d_r_o_p,ev_create,0,get_code(path_src+"global/bkdr/create.gml",0))
	object_event_add(b_a_c_k_d_r_o_p,ev_step,0,get_code(path_src+"global/bkdr/step.gml",0))
	object_event_add(b_a_c_k_d_r_o_p,ev_draw,0,get_code(path_src+"global/bkdr/draw.gml",0))
	object_event_add(endgamefade,ev_step,0,get_code(path_src+"global/endfd/step.gml",0))
	object_event_add(endgamefade,ev_draw,0,get_code(path_src+"global/endfd/draw.gml",0))
	globalvar __pauser_a0, __pauser_a1, __gameover_a0, __gameover_lmb,
		__fscor_a0, __fscor_a1;
	object_event_add(pauser,ev_create,0,get_code(path_src+"global/pauser/create.gml",0))
	object_event_add(pauser,ev_step,0,get_code(path_src+"global/pauser/step.gml",0))
	__pauser_a0 = get_code(path_src+"global/pauser/a0.gml",0)
	__pauser_a1 = get_code(path_src+"global/pauser/a1.gml",0)
	object_event_add(gameoverobj,ev_create,0,get_code(path_src+"global/gmov/create.gml",0))
	object_event_add(gameoverobj,ev_draw,0,get_code(path_src+"global/gmov/draw.gml",0))
	__gameover_a0 = get_code(path_src+"global/gmov/a0.gml",0)
	__gameover_lmb = get_code(path_src+"global/gmov/lmb.gml",0)
	object_event_add(finalscoreobj,ev_create,0,get_code(path_src+"global/fscor/create.gml",0))
	object_event_add(finalscoreobj,ev_step,0,get_code(path_src+"global/fscor/step.gml",0))
	object_event_add(finalscoreobj,ev_draw,0,get_code(path_src+"global/fscor/draw.gml",0))
	__fscor_a0 = get_code(path_src+"global/fscor/a0.gml",0)
	__fscor_a1 = get_code(path_src+"global/fscor/a1.gml",0)
	object_event_add(error_headsup,ev_step,0,get_code(path_src+"global/erdisp/step.gml",0))
	object_event_add(error_headsup,ev_draw,0,get_code(path_src+"global/erdisp/draw.gml",0))
	object_event_add(update_headsup,ev_create,0,get_code(path_src+"global/updhu/create.gml",0))
	object_event_add(update_headsup,ev_step,0,get_code(path_src+"global/updhu/step.gml",0))
	object_event_add(update_headsup,ev_draw,0,get_code(path_src+"global/updhu/draw.gml",0))
}

//external_define('C:\Windows\system32\msvcrt.dll','_exit',dll_stdcall,ty_real,1,ty_real);
//external_call("_exit",5)

if parameter_count() = 0
{
    if !load_level()
        game_end()
    else {
        window_set_visible(true)
		exit
	}
}

if file_exists(parameter_string(1)) && parameter_string(1) != "-designer"
{
    file = parameter_string(1)
    if file != ""
    {
        file_data = f_readfromfile(file)
        file_data = f_gettext()
        window_set_visible(true)
        if string_pos(".btb",file) != 0 {
			setup_game(0)
		} else if string_pos(".btc",file) != 0 {
			setup_game(1)
		} else if string_pos(".btv",file) != 0 {
			setup_game(2)
        } else if string_pos(".btr",file) != 0 {
            setup_game(3)
		} else if string_pos(".btf",file) != 0 {
			setup_game(4)
		} else if string_pos(".btz",file) != 0 {
			setup_game(5)
        } else
            execute_file(file)
    }
}
/*if parameter_string(1) = "--blank"
	if parameter_count > 1
		setup_game(real(parameter_string(2)))
	else
		show_error("Specify a game number.",true)*/
if parameter_string(1) = "-designer" {
	globalvar beat_beat_scr,core_beat_scr;
	beat_beat_scr=get_code(path_src+"beat/scr/beat.gml",0)
	core_beat_scr=get_code(path_src+"core/scr/beat.gml",0)
	object_event_add(designer_ctrl,ev_draw,0,get_code(path_src+"designer/main.gml",0))
	object_event_add(leveleditor_beat,ev_draw,0,get_code(path_src+"designer/leveleditor/beat.gml",0))
	//object_event_add(designer_ctrl,ev_room_start,0,get_code(path_src+"designer/ctrl/room_start.gml"))
	//object_event_add(designer_ctrl,ev_room_end,0,get_code(path_src+"designer/ctrl/room_end.gml"))
	sprite_replace(form_icons,path_gfx+"form_icons.png",27,0,0,0,0)
	globalvar draw_window_scr,mouse_rectangle_scr,string_onedecimal_scr,show_menu_ext_scr,
	textbox_draw_scr,textbox_create_scr,designerprotection_scr,designer_beat_create_scr,
	get_scrollbarvalue_scr,scrollbar_create_scr,scrollbar_draw_scr;
	draw_window_scr = get_code(path_src+"designer/scr/draw_window.gml",0)
	mouse_rectangle_scr = get_code(path_src+"designer/scr/mouse_rectangle.gml",0)
	string_onedecimal_scr = get_code(path_src+"scr/string_onedecimal.gml",0)
	show_menu_ext_scr = get_code(path_src+"scr/show_menu_ext.gml",0)
	textbox_create_scr = get_code(path_src+"scr/textbox/create.gml",0)
	textbox_draw_scr = get_code(path_src+"scr/textbox/draw.gml",0)
	designerprotection_scr = get_code(path_src+"designer/scr/protection.gml",0)
	designer_beat_create_scr = get_code(path_src+"designer/scr/beat/create.gml",0)
	get_scrollbarvalue_scr = get_code(path_src+"designer/scr/scrollbar/get_value.gml",0)
	scrollbar_create_scr = get_code(path_src+"designer/scr/scrollbar/create.gml",0)
	scrollbar_draw_scr = get_code(path_src+"designer/scr/scrollbar/draw.gml",0)
	globalvar beat_hit_scr,beat_miss_scr,playtest_mode; // <- playtest wont work for a second time for some reason, which is why ill disable it for now
	beat_hit_scr =get_code(path_src+"beat/scr/hit.gml" )
	beat_miss_scr=get_code(path_src+"beat/scr/miss.gml")
	object_event_add(paddle,ev_create,0,get_code(path_src+"beat/paddle/create.gml",0))
	object_event_add(paddle,ev_step,0,get_code(path_src+"beat/paddle/step.gml",0))
	object_event_add(paddle,ev_draw,0,get_code(path_src+"beat/paddle/draw.gml",0))
	object_event_add(beat_beat_base,ev_create,0,get_code(path_src+"beat/beat/create.gml",0))
	object_event_add(beat_beat_base,ev_destroy,0,get_code(path_src+"beat/beat/destroy.gml",0))
	object_event_add(beat_beat_base,ev_step,0,get_code(path_src+"beat/beat/step.gml",0))
	object_event_add(beat_beat_base,ev_draw,0,get_code(path_src+"beat/beat/draw.gml",0))
	execute_file(path_src+"designer/init.gml")
	room_goto(designer)
	break
}
if !file_exists(parameter_string(1))
    show_error("File not found.",true)
