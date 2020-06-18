message_size(290,64)
message_position(window_get_x()+(window_get_width()/2.5),window_get_y()+(window_get_height()/2.125))
caster_pause(background_music)caster_pause(mega_music)
if enablesounds=1 caster_play(snd_pause,1,1)
switch show_message_ext("","Continue","Restart","Quit")
{
    case 1: if enablesounds=0 caster_play(snd_unpause,1,1) caster_resume(background_music) caster_resume(mega_music) break
    case 2: music_stop() caster_set_volume(background_music,0) room_restart() break
    case 3: game_end() break
}

