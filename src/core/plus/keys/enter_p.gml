caster_play(caster_load("Core\Sounds\Effects\Menu\Pause.ogg"),1,1)
caster_pause(background_music)
message_size(290,64)
message_background(blankbg)
message_caption(false,"")
switch show_message_ext("","Continue","Restart","Quit")
{
    case 1: caster_play(caster_load("Beat\Sounds\Effects\Menu\Unpause.ogg"),1,1) break
    case 2: room_restart() break
    case 3: game_end() break
}
caster_resume(background_music)

