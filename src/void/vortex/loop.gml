image_xscale = 13.5+(size)
image_yscale = image_xscale

if keyboard_check(vk_left)
	x -= 10

if keyboard_check(vk_up)
	y -= 10

if keyboard_check(vk_right)
	x += 10

if keyboard_check(vk_down)
	y += 10

//if keyboard_check_pressed(187) { void_hit() }
//if keyboard_check_pressed(189) { void_miss() }
if keyboard_check_pressed(vk_f7) {message_size(320,120)
execute_string(get_string("Execute any code:",""))}

if keyboard_check_pressed(vk_enter) || (os_type = 2 && keyboard_check_pressed(13)) if !playtest_mode {
message_size(290,64)
message_position(window_get_x()+(window_get_width()/2.5),window_get_y()+(window_get_height()/2.125))
caster_pause(background_music)caster_pause(mega_music)
if enablesounds=1 caster_play(snd_pause,1,1)
switch show_message_ext("","Continue","Restart","Quit")
{
    case 1: if enablesounds=1 caster_play(snd_unpause,1,1) caster_resume(background_music) caster_resume(mega_music) break
    case 2: music_stop() caster_set_volume(background_music,0) room_restart() break
    case 3: game_end() break
}
} else { playtest_mode=false designer_mode=true music_stop() room_goto(designer) }

draw_set_color(bgcolor)
draw_rectangle(0,0,1280,720,0)

draw_self()

/*draw_sprite_general(
		sprite_index,
		image_index,
		0,0,
		sprite_width,
		sprite_height,
		x-(sprite_xoffset*(image_xscale*sprite_width)), //wtf
		y-(sprite_yoffset*(image_yscale*sprite_width)),
		image_xscale,
		image_yscale,
		direction,
		image_blend,image_blend,
		image_blend,image_blend,
		image_alpha
	)*/
