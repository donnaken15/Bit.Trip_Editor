window_set_visible(false)
globalvar file, file_data, combo, multi, mode, difficulty,
nofail, bot, stopped, background_music, paused, mega_music,
soundtype, stepcode, drawcode, nowin, KBsensitivity, windows,
winid, designer_mode, init, updateout, rainbow_index, rainbow_speed,
showscore, showmodes, showcombo, showmulti, showbars, showpaddletext, showpaddle,
showparticles, background_music_free, try, /*Discord_Initialize,*/ lastgame, lastmusicfile, enablesounds,
realtimesrc,
path_root,path_src,
path_gfx,path_sfx,
path_mus,path_bin
;

path_root = program_directory+"/"
path_src = path_root+"src/"
path_gfx = path_root+"gfx/"
path_sfx = path_root+"sfx/"
path_mus = path_root+"mus/"
path_bin = path_root+"bin/"

showscore = 1 showmodes = 1 showcombo = 1 showmulti = 1 showbars = 1 showpaddletext = 1 showpaddle = 1
background_music_free=1
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

//o-o
//external_define('discord-rpc.dll','_Discord_Initialize',dll_cdecl,ty_real,4,ty_string,ty_real,ty_real,ty_real);
//external_define('discord-rpc.dll','_Discord_Shutdown',dll_cdecl,ty_real,0);

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

/*registry_set_root(2)
if registry_read_string("\.btb") != 'BitTripEditor.Beat'//if !registry_exists("\.btb")
execute_shell("reg",'add HKCR\.btb /ve /d BitTripEditor.Beat /f')
if registry_read_string("\.btc") != 'BitTripEditor.Core'//if !registry_exists("\.btc")
execute_shell("reg",'add HKCR\.btc /ve /d BitTripEditor.Core /f')
if registry_read_string("\.btv") != 'BitTripEditor.Void'//if !registry_exists("\.btv")
execute_shell("reg",'add HKCR\.btv /ve /d BitTripEditor.Void /f')
if registry_read_string("\.btr") != 'BitTripEditor.Runner'//if !registry_exists("\.btr")
execute_shell("reg",'add HKCR\.btr /ve /d BitTripEditor.Runner /f')
if registry_read_string("\.btf") != 'BitTripEditor.Fate'//if !registry_exists("\.btf")
execute_shell("reg",'add HKCR\.btf /ve /d BitTripEditor.Fate /f')
if registry_read_string("\.btz") != 'BitTripEditor.Flux'//if !registry_exists("\.btx")
execute_shell("reg",'add HKCR\.btx /ve /d BitTripEditor.Flux /f')
if registry_read_string("\BitTripEditor.Beat") != 'Bit . Trip Beat Level'//if !registry_exists("\BitTripEditor.Beat")
execute_shell("reg",'add HKCR\BitTripEditor.Beat /ve /d "Bit . Trip Beat Level" /f')
if registry_read_string("\BitTripEditor.Core") != 'Bit . Trip Core Level'//if !registry_exists("\BitTripEditor.Core")
execute_shell("reg",'add HKCR\BitTripEditor.Core /ve /d "Bit . Trip Core Level" /f')
if registry_read_string("\BitTripEditor.Void") != 'Bit . Trip Void Level'//if !registry_exists("\BitTripEditor.Void")
execute_shell("reg",'add HKCR\BitTripEditor.Void /ve /d "Bit . Trip Void Level" /f')
if registry_read_string("\BitTripEditor.Runner") != 'Bit . Trip Runner Level'//if !registry_exists("\BitTripEditor.Runner")
execute_shell("reg",'add HKCR\BitTripEditor.Runner /ve /d "Bit . Trip Runner Level" /f')
if registry_read_string("\BitTripEditor.Fate") != 'Bit . Trip Fate Level'//if !registry_exists("\BitTripEditor.Fate")
execute_shell("reg",'add HKCR\BitTripEditor.Fate /ve /d "Bit . Trip Fate Level" /f')
if registry_read_string("\BitTripEditor.Flux") != 'Bit . Trip Flux Level'//if !registry_exists("\BitTripEditor.Flux")
execute_shell("reg",'add HKCR\BitTripEditor.Flux /ve /d "Bit . Trip Flux Level" /f')
if registry_read_string("\BitTripEditor.Beat\DefaultIcon") != path_root+'\icons.dll,0'//if !registry_exists("\BitTripEditor.Beat\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Beat\DefaultIcon /ve /d "'+path_root+'\icons.dll,0" /f')
if registry_read_string("\BitTripEditor.Core\DefaultIcon") != path_root+'\icons.dll,1'//if !registry_exists("\BitTripEditor.Core\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Core\DefaultIcon /ve /d "'+path_root+'\icons.dll,1" /f')
if registry_read_string("\BitTripEditor.Void\DefaultIcon") != path_root+'\icons.dll,2'//if !registry_exists("\BitTripEditor.Void\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Void\DefaultIcon /ve /d "'+path_root+'\icons.dll,2" /f')
if registry_read_string("\BitTripEditor.Runner\DefaultIcon") != path_root+'\icons.dll,3'//if !registry_exists("\BitTripEditor.Runner\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Runner\DefaultIcon /ve /d "'+path_root+'\icons.dll,3" /f')
if registry_read_string("\BitTripEditor.Fate\DefaultIcon") != path_root+'\icons.dll,4'//if !registry_exists("\BitTripEditor.Fate\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Fate\DefaultIcon /ve /d "'+path_root+'\icons.dll,4" /f')
if registry_read_string("\BitTripEditor.Flux\DefaultIcon") != path_root+'\icons.dll,5'//if !registry_exists("\BitTripEditor.Flux\DefaultIcon")
execute_shell("reg",'add HKCR\BitTripEditor.Flux\DefaultIcon /ve /d "'+path_root+'\icons.dll,5" /f')
if registry_read_string("\BitTripEditor.Beat\shell\edit\command") != 'BitTripEditor.Beat'//if !registry_exists("\BitTripEditor.Beat\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Beat\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
if registry_read_string("\BitTripEditor.Core\shell\edit\command") != 'BitTripEditor.Core'//if !registry_exists("\BitTripEditor.Core\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Core\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
if registry_read_string("\BitTripEditor.Void\shell\edit\command") != 'BitTripEditor.Void'//if !registry_exists("\BitTripEditor.Void\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Void\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
if registry_read_string("\BitTripEditor.Runner\shell\edit\command") != 'BitTripEditor.Runner'//if !registry_exists("\BitTripEditor.Runner\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Runner\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
if registry_read_string("\BitTripEditor.Fate\shell\edit\command") != 'BitTripEditor.Fate'//if !registry_exists("\BitTripEditor.Fate\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Fate\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
if registry_read_string("\BitTripEditor.Flux\shell\edit\command") != 'BitTripEditor.Flux'//if !registry_exists("\BitTripEditor.Flux\shell\edit\command")
execute_shell("reg",'add HKCR\BitTripEditor.Flux\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Beat\shell\edit\command") || *///registry_read_string("\BitTripEditor.Beat\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Beat\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Core\shell\edit\command") || */registry_read_string("\BitTripEditor.Core\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Core\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Void\shell\edit\command") || */registry_read_string("\BitTripEditor.Void\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Void\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Runner\shell\edit\command") || */registry_read_string("\BitTripEditor.Runner\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Runner\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Fate\shell\edit\command") || */registry_read_string("\BitTripEditor.Fate\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Fate\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')
//if /*!registry_exists("\BitTripEditor.Flux\shell\edit\command") || */registry_read_string("\BitTripEditor.Flux\shell\open\command") != '"'+program_directory+'\GAME.EXE" "%1\"'
//execute_shell("reg",'add HKCR\BitTripEditor.Flux\shell\open\command /ve /d "\"'+path_root+'\GAME.EXE\" \"%1\"" /f')

/*registry_set_root(2)
registry_write_string("\.btb","BitTripEditor.Beat")
registry_write_string("\.btc","BitTripEditor.Core")
registry_write_string("\.btv","BitTripEditor.Void")
registry_write_string("\.btr","BitTripEditor.Runner")
registry_write_string("\.btf","BitTripEditor.Fate")
registry_write_string("\.btz","BitTripEditor.Flux")
registry_write_string("\BitTripEditor.Beat","Bit . Trip Beat Level")
registry_write_string("\BitTripEditor.Beat\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,0"')
registry_write_string("\BitTripEditor.Beat\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Beat\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')
registry_write_string("\BitTripEditor.Core","Bit . Trip Core Level")
registry_write_string("\BitTripEditor.Core\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,1"')
registry_write_string("\BitTripEditor.Core\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Core\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')
registry_write_string("\BitTripEditor.Void","Bit . Trip Void Level")
registry_write_string("\BitTripEditor.Void\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,2"')
registry_write_string("\BitTripEditor.Void\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Void\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')
registry_write_string("\BitTripEditor.Runner","Bit . Trip Runner Level")
registry_write_string("\BitTripEditor.Runner\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,3"')
registry_write_string("\BitTripEditor.Runner\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Runner\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')
registry_write_string("\BitTripEditor.Fate","Bit . Trip Fate Level")
registry_write_string("\BitTripEditor.Fate\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,4"')
registry_write_string("\BitTripEditor.Fate\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Fate\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')
registry_write_string("\BitTripEditor.Flux","Bit . Trip Flux Level")
registry_write_string("\BitTripEditor.Flux\DefaultIcon",'"E:\Bit . Trip Editor\icons.dll,5"')
registry_write_string("\BitTripEditor.Flux\shell\edit\command",'"C:\Windows\System32\notepad.exe" "%1"')
registry_write_string("\BitTripEditor.Flux\shell\open\command",'"'+path_root+'\GAME.EXE" "%1"')*/

combo = 0
multi = 1
mode = 1
score = 0
set_application_title("BIT . TRIP EDITOR")
set_automatic_draw(true)


globalvar skip_scr,skiprel_scr,set_bg_color_scr,toggle_scr,pause_scr,
lose_scr,win_scr,nosounds_scr,sounds_scr,recursion_scr,draw_rainbow_scr,
load_level_scr,timeline_load_scr,file_text_read_all_scr,newline_scr,
music_scr,music_loop_scr,music_mega_scr,music_mega_loop_scr,music_play_scr,music_stop_scr,
get_code_scr,get_code_scr
;

if !realtimesrc {
file_text_read_all_scr =
	execute_file(path_src+"scr/file_text_read_all.gml",path_src+"scr/file_text_read_all.gml")
get_code_scr = file_text_read_all(path_src+"scr/get_code.gml")
}
else {
file_text_read_all_scr = path_src+"scr/file_text_read_all.gml"
get_code_scr = path_src+"scr/get_code.gml" }

skip_scr = get_code(path_src+"scr/skip.gml")
skiprel_scr = get_code(path_src+"scr/skiprel.gml")
set_bg_color_scr = get_code(path_src+"scr/set_bg_color.gml")
toggle_scr = get_code(path_src+"scr/toggle.gml")
pause_scr = get_code(path_src+"scr/pause.gml")
lose_scr = get_code(path_src+"scr/lose.gml")
win_scr = get_code(path_src+"scr/win.gml")
nosounds_scr = get_code(path_src+"scr/nosounds.gml")
sounds_scr = get_code(path_src+"scr/sounds.gml")
seconds_scr = get_code(path_src+"scr/seconds.gml")
recursion_scr = get_code(path_src+"scr/recursion.gml")
draw_rainbow_scr = get_code(path_src+"scr/draw_rainbow.gml")
load_level_scr = get_code(path_src+"scr/load_level.gml")
timeline_load_scr = get_code(path_src+"scr/timeline_load.gml")
newline_scr = get_code(path_src+"scr/newline.gml")
setup_game_scr = get_code(path_src+"scr/setup_game.gml")

music_scr = get_code(path_src+"scr/music/hyper.gml")
music_loop_scr = get_code(path_src+"scr/music/hyper_loop.gml")
music_mega_scr = get_code(path_src+"scr/music/mega.gml")
music_mega_loop_scr = get_code(path_src+"scr/music/mega_loop.gml")
music_play_scr = get_code(path_src+"scr/music/play.gml")
music_stop_scr = get_code(path_src+"scr/music/stop.gml")

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
    else
        window_set_visible(true)
}

timeline_index=0
timeline_speed=0
timeline_running=false

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
if parameter_string(1) = "-designer"
    setup_game(6)
if !file_exists(parameter_string(1))
    show_error("File not found.",true)
