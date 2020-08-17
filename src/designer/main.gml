window_set_color(make_color_rgb(212,208,200))
window_set_cursor(cr_default)

if returningfromfullscreen {
window_set_position(old_x2, old_y2)
returningfromfullscreen = 0
if ini_read_real("Designer","SaveWin",0) {
ini_write_real("Designer","W",old_width)
ini_write_real("Designer","H",old_height)} }

if (keyboard_check_pressed(vk_f4) && !window_get_fullscreen() && !returningfromfullscreen) || menufulls {
old_width = old_width2
old_height = old_height2
old_x = old_x2
old_y = old_y2
view_wview[0] = old_width
view_wport[0] = old_width
view_hport[0] = old_height
view_hview[0] = old_height
window_set_size(old_width,old_height)
returningfromfullscreen = 1 menufulls = 0 room_restart() }

ini_write_real("Designer","X",window_get_x())
ini_write_real("Designer","Y",window_get_y())

if resized {
window_set_position(old_x, old_y)
if ini_read_real("Designer","SaveWin",1) {
ini_write_real("Designer","W",old_width)
ini_write_real("Designer","H",old_height)}
resized = 0 }

if !window_get_fullscreen() {
old_width2 = old_width
old_height2 = old_height
old_x2 = old_x
old_y2 = old_y
if old_width != 2560 {
old_x = window_get_x()
old_y = window_get_y() } }

ini_write_real("Designer","Fullscreen",window_get_fullscreen())

if old_width != window_get_width() {
old_width = window_get_width()
view_wview[0] = floor(window_get_width()/2)*2
view_wport[0] = floor(window_get_width()/2)*2
old_x = window_get_x()
old_y = window_get_y()
resized = 1 room_restart() }
if old_height != window_get_height() {
old_height = window_get_height()
view_hport[0] = floor(window_get_height()/2)*2
view_hview[0] = floor(window_get_height()/2)*2
old_x = window_get_x()
old_y = window_get_y()
resized = 1 room_restart() }

if !window_get_sizeable() window_set_sizeable(true)

draw_set_font(courier)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_set_color(c_black)
if fps<room_speed/2{draw_set_color(make_color_rgb(255,8.5*((fps/room_speed)*60),0))}
if fps>=room_speed/2{draw_set_color(make_color_rgb(255-(8.5*(((fps/room_speed)*60)-30)),255,0))}
draw_text(view_wview[0],12,"FPS:"+string(fps)+"/"+string(room_speed))
draw_set_color(c_black)
draw_text(view_wview[0],view_hview[0],"KEY:"+string_format(keyboard_key,5,0)+"
OBJS:"+string_format(instance_count,5,0)+"
MOUSE:"+string_format(mouse_button,5,0)+"
RES: "+string_format(view_wview[0],5,0)+" x "+string_format(view_hview[0],5,0)+"
PTR: "+string_format(mouse_x,5,0)+" ,"+string_format(mouse_y,6,0)+"
VEL: "+string_format(mouse_x-mouse_x_last,5,0)+" ,"+string_format(mouse_y-mouse_y_last,6,0)+"
ACTIVE:"+string_format(active/*-100000*/,11,0)+/*"
HANDLE:"+string_format(window_handle(),11,0)+*/"
BUILDTIME:"+string_format(builddate,20,0)+"
CURTIME:   "+string_replace_all(string_format(current_month,2,0)+"/"+string_format(current_day,2,0)+
"/"+string_format(current_year,4,0)," ","0")+" "+string_replace_all(string_format(current_hour,2,0)+":"+
string_format(current_minute,2,0)+":"+string_format(current_second,2,0)," ","0"))
mouse_x_last = mouse_x
mouse_y_last = mouse_y
draw_set_halign(fa_left)
draw_set_color(c_red)
draw_text(0,view_hview[0],string_copy("/!\ WARNING: LOW FRAMERATE",0,(fps<=room_speed/3)*26))

var a,b,showmenu,s,timeleft,format,done,p,size,sizestr,origw,origh;
showmenu=0
draw_set_font(mssansserif)
draw_set_color(c_black)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

a=mouse_rectangle(0,0,28,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,a,0,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(0,0,28,0)
draw_line(0,0,0,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(27,1,27,18)
draw_line(1,17,27,17) }
draw_set_color(c_black)
draw_text(6+((a==2)*1),2+((a==2)*1),"File")
if (mouse_check_button_released(mb_left) && a>0) showmenu=1

a=mouse_rectangle(28,0,27,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,3+a,28,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(28,0,55,0)
draw_line(28,0,28,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(54,1,54,18)
draw_line(28,17,55,17) }
draw_set_color(c_black)
draw_text(32+((a==2)*1),2+((a==2)*1),"Edit")
if (mouse_check_button_released(mb_left) && a>0) showmenu=2

a=mouse_rectangle(55,0,32,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,6+a,55,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(55,0,87,0)
draw_line(55,0,55,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(86,1,86,18)
draw_line(55,17,87,17) }
draw_set_color(c_black)
draw_text(59+((a==2)*1),2+((a==2)*1),"View")
if (mouse_check_button_released(mb_left) && a>0) showmenu=3

a=mouse_rectangle(87,0,34,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,9+a,87,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(87,0,121,0)
draw_line(87,0,87,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(120,1,120,18)
draw_line(87,17,120,17) }
draw_set_color(c_black)
draw_text(90+((a==2)*1),2+((a==2)*1),"Game")
if (mouse_check_button_released(mb_left) && a>0) showmenu=4

a=mouse_rectangle(121,0,30,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,12+a,121,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(121,0,151,0)
draw_line(121,0,121,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(150,1,150,18)
draw_line(121,17,150,17) }
draw_set_color(c_black)
draw_text(124+((a==2)*1),2+((a==2)*1),"Help")
if (mouse_check_button_released(mb_left) && a>0) showmenu=5

a=mouse_rectangle(151,0,50,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,12+a,121,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(151,0,201,0)
draw_line(151,0,151,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(200,1,200,18)
draw_line(151,17,200,17) }
draw_set_color(c_black)
draw_text(154+((a==2)*1),2+((a==2)*1),"Windows")
if (mouse_check_button_released(mb_left) && a>0) showmenu=6

a=mouse_rectangle(201,0,40,18)
a+=(mouse_check_button(mb_left) && a=1)
if (loading>0) a=0
//draw_sprite(form_tabs,12+a,121,0)
if a>0 {
draw_set_color(c_white*(a==1)+c_gray*(a==2))
draw_line(201,0,241,0)
draw_line(201,0,201,18)
draw_set_color(c_gray*(a==1)+c_white*(a==2))
draw_line(240,1,240,18)
draw_line(201,17,240,17) }
draw_set_color(c_black)
draw_text(204+((a==2)*1),2+((a==2)*1),"Debug")
if (mouse_check_button_released(mb_left) && a>0) showmenu=7

if (loading=0) {
    if (keyboard_check(vk_control)) {
        if (keyboard_check_pressed(ord("N"))) { winid += 1 windows[winid]=instance_create(view_wview[0]/2,view_hview[0]/2,newfile) with windows[winid] { myid = winid } }
        if (keyboard_check_pressed(ord("O"))) show_message("0")
        if (keyboard_check_pressed(ord("S"))) show_message("1")
        if (keyboard_check_pressed(ord("S")) && keyboard_check_pressed(vk_shift)) show_message("1")
    }
}
if (showmenu>0) {
    if (showmenu=1) {
        a=show_menu_ext(0,18,"1#New&Ctrl+N|2#Open&Ctrl+O|3#"+string_copy("!^",0,(active<=0)*2)+"Save&Ctrl+S|3#"+string_copy("!^",0,(active<=0)*2)+"Save as...&Ctrl+Shift+S|-|2#"+string_copy("!^",0,((active<=0)&&(string(active.filelink)!="0"||string(active.filelink)!=""))*2)+"Reload File|-|10#Options&Ctrl+U|4#Exit&Alt+F4",-1)
        if (a=0) { winid += 1 windows[winid]=instance_create(view_wview[0]/2,view_hview[0]/2,newfile) active = windows[winid] with windows[winid] { myid = winid } }
        if (a=1) { file = get_open_filename("Any Level|*.btb;*.btc;*.btv;*.btr;*.btf;*.btz|Beat Level|*.btb|Core Level|*.btc|Void Level|*.btv|Runner Level|*.btr|Fate Level|*.btf|Flux Level|*.btz|All files|*.*","")
if string(file) != "" {
winid += 1 windows[winid]=instance_create(view_wview[0]/2,view_hview[0]/2,leveleditor_beat)
active = windows[winid] with windows[winid] { objlistbox = surface_create(1024,1024) myid = winid bpm = 60 isfile = 1
sizex=660sizey=390timeline_txt=textbox_create()timeline_txt.single_line=true
timeline_txt.select_on_focus=true timeline_txt.color_selection=make_color_rgb(0,0,128)
timeline=timeline_add()
levelname = file
filelink = levelname
i = 0
file_data = f_text_open(file,f_mode_read)
while !f_text_eof(file_data)
{
    f_text_readline(file_data)
    fileline=f_text_read_string(file_data)
    timeline_moment_add(timeline,i,string_replace_all(string_replace_all(string_replace_all('execute_string("'+string_replace_all(fileline,'"','"'+"+'"+'"'+"'+"+'"')+'")',"game_end(","designerprotection("),"show_message(","designerprotection("),"room_goto(","designerprotection("))
    timelineraw[i]=fileline
    i += 1;
}
f_text_close(file_data)
for (j = 0; j < string_length(file); j += 1) {
  if string_char_at(file,j) = "\" || string_char_at(file,j) = "/"
    k = j
}
level_directory = string_copy(file,0,k)
timeline_txt.text=timelineraw[0]
timelinerawlen = i
timeline_index=timeline
timeline_view_position = 0
selectedframe=-1
pressed = 0}}}
        if (a = 2 || a = 3) { if ((string(active.filelink) = "0" || string(active.filelink) = "") && a = 2) || a = 3
if active.isfile
        active.filelink = get_save_filename("Any Level|*.btb;*.btc;*.btv;*.btr;*.btf;*.btz|Beat Level|*.btb|Core Level|*.btc|Void Level|*.btv|Runner Level|*.btr|Fate Level|*.btf|Flux Level|*.btz|All files|*.*",active.levelname)
        with active { isfile = 1 newdata = f_text_open(filelink,f_mode_write)
        for (i = 0; i <= timelinerawlen; i += 1)
        { f_text_write_string(newdata, timelineraw[i])
        f_text_writeline(newdata, true) }
        f_text_close(newdata) } }
if (a=4) { if show_question(
"You will lose all changes you made
after the file was edited if you
confirm this, and you will lose
all changes made in the file by
saving the designer data. Continue?") with active { if (string(levelname) != "0" || string(levelname) != "") {
timeline_index = -1
timeline=timeline_add()
timelineraw[1]=""
i = 0
file_data = f_text_open(levelname,f_mode_read)
while !f_text_eof(file_data)
{
    f_text_readline(file_data)
    fileline=f_text_read_string(file_data)
    timeline_moment_add(timeline,i,string_replace_all(string_replace_all(string_replace_all('execute_string("'+string_replace_all(fileline,'"','"'+"+'"+'"'+"'+"+'"')+'")',"game_end(","designerprotection("),"show_message(","designerprotection("),"room_goto(","designerprotection("))
    timelineraw[i]=fileline
    i += 1;
}
f_text_close(file_data)
for (j = 0; j < string_length(filename); j += 1) {
  if string_char_at(filename,j) = "\" || string_char_at(filename,j) = "/"
    k = j
}
level_directory = string_copy(file,0,k)
timeline_txt.text=timelineraw[0]
timelinerawlen = i
timeline_index=timeline
timeline_view_position = 0
}}}
        if (a=6) game_end()
    }
    if (showmenu=2) {
        a=show_menu_ext(27,18,"5#"+string_copy("!^",0,(active<=0)*2)+"Cut&Ctrl+X|6#"+string_copy("!^",0,(active<=0)*2)+
        "Copy&Ctrl+C|7#"+string_copy("!^",0,(active<=0)*2)+"Paste&Ctrl+V|-|"+string_copy("!^",0,(active<=0)*2)+"Select All&Ctrl+A|8#"+string_copy("!^",0,(active<=0)*2)+"Undo&Ctrl+Z|9#"+string_copy("!^",0,(active<=0)*2)+"Redo&Ctrl+Y|-|10#"+string_copy("!^",0,(active<=0)*2)+"Level Settings&Ctrl+L|"+string_copy("!^",0,(active<=0)*2)+"Insert|\|Beats|\|Normal|Orange|Pink|Blue|Rainbow|Cyan (Bounce)|Cyan (Teleport)|Bright Yellow (Still)|Violet|/|Effects|Tempo|Misc.|\|Pause|/|/|"+string_copy("!^",0,(active<=0)*2)+"Delete&Del|-|"+string_copy("!^",0,((active<=0)&&(string(active.filelink)!="0"||string(active.filelink)!=""))*2)+"Open in Notepad",-1)
        if (a=0) {
        }
        if (a=1) {
        }
        if (a=2) {
        }
        if (a=3) {
        }
        if (a=9) {
        }
        if (a=23) {
        execute_shell("notepad",active.filelink)
        }
    }
    if (showmenu=3) {
        a=show_menu_ext(54,18,"11#"+string_copy("!^",0,(active<=0)*2)+"Play/Pause&Space|14#"+string_copy("!^",0,(active<=0)*2)+"Skip to Beginning&Home|13#"+string_copy("!^",0,(active<=0)*2)+"Skip to End&End|15#"+string_copy("!^",0,(active<=0)*2)+"Rewind&PgUp|16#"+string_copy("!^",0,(active<=0)*2)+"Fastforward&PgDn|-|"+string_copy("26#",0,(window_get_fullscreen())*3)+"Fullscreen&F4",-1)
        if (a=0) {
    active.timeline_running = !active.timeline_running
        }
        if (a=1) {
    active.timeline_position = 0
        }
if (a=5) {
window_set_fullscreen(!window_get_fullscreen())
menufulls=1
}
    }
    if (showmenu=4) {
        a=show_menu_ext(86,18,"11#"+/*string_copy("!^",0,(active<=0)*2)+*/"!^Playtest Level &Ctrl+G|"+string_copy("26#",0,(always_hit)*3)+string_copy("!^",0,(active<=0)*2)+"Simulate Hits&Ctrl+B",-1)
        /*if (a=0) {
		designer_mode=false
		playtest_mode=true
    timeline_clear(level)
for (i = 0; i < 10; i += 1)
    timeline_moment_add(level,i,active.timelineraw[i])
    room_goto(beat)
        }*/
        if (a=0) {
          always_hit = !always_hit
        }
    }
    if (showmenu=5) {
        a=show_menu_ext(120,18,"19#About&F1|18#Guide",-1)
        if (a=0) {
            show_info()
        }
        if (a=1) {
            execute_shell("http://bittripeditor.boards.net/thread/5/make-level",0)
        }
    }
if (showmenu=6) {
    windows = 0 windowcount = 0 windowlist = ""
    if instance_number(leveleditor_beat) > 0 {
    for (windowcount = 0; windowcount < instance_number(leveleditor_beat); windowcount += 1)
{ windows[windowcount+1] = instance_find(leveleditor_beat,windowcount) windowlist += "|"+string_copy("26#",0,(active=windows[windowcount+1])*3)+string_copy("20#",0,(active!=windows[windowcount+1])*3) if windows[windowcount+1].levelname != "" windowlist += string_replace_all(windows[windowcount+1].levelname,"|","¦") else windowlist += "("+string(windows[windowcount+1].id)+") Untitled" } }
        a=show_menu_ext(216,18,string_copy("26#",0,(active<=0)*3)+"None|"+string_copy("-|"+windowlist,0,(string_length(windowlist)+2)*(instance_number(leveleditor_beat)>0)),-1)
if a >= 0 active=windows[a]
}
    if (showmenu=7) {
message_input_color(c_white)
        a=show_menu_ext(331,18,"Execute String|Take Screenshot|Save Session|Load Session|Restart Session|Set Active Window",-1)
        if (a=0) {
            execute_string(get_string("Enter GameMaker code:",""))
        }
        if (a=1) {
scrshotdelay=30
        }
if (a=2) {
saveses = get_save_filename("Any type|*.*","designer"+string(current_time))
if saveses != "" game_save(saveses)
saveses = ""
}
if (a=3) {
loadses = get_open_filename("Any type|*.*","designer"+string(current_time))
if loadses != "" game_load(saveses)
loadses = ""
}
if (a=4) {
room_persistent=false
room_restart()
}
if (a=5) {
active = get_integer("Choose active window by ID: (none is 0 or less)",active)
}
    }
}

if scrshotdelay>=0 scrshotdelay-=1
if scrshotdelay=0 { scrshot = get_save_filename("Any image type|*.png;*.jpg;*.bmp;*.tiff;*.tga|Portable Network Graphics|*.png|JPEG|*.jpg|Bitmap|*.bmp|TIFF|*.tiff|Targa|*.tga|Any type|*.*","scrshot"+string(current_time))
if scrshot != "" sprite_save(sprite_create_from_screen(0,0,view_wview[0],view_hview[0],false,false,0,0),0,scrshot)
scrshot = "" }

if instance_count > 2 {
with active { depth = -1 }
for (i = 0; i < instance_count; i += 1)
with instance_id[i] if parent.id = active depth = -1 else depth = 0
if activecheck = 0 activecheck = 1
with active if mouse_check_button_pressed(mb_left) && mouse_rectangle(0,18,view_wview[0],view_hview[0]) && /* && !mouse_rectangle(x,y,sizex,sizey)*/ activecheck && showmenu = 0 active = noone }
else active = noone




