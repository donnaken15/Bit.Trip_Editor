message_size(320,60)
message_position(window_get_x()+(window_get_width()/2.6),window_get_y()+(window_get_height()/1.75))
switch show_message_ext("","  Another Level  ","Restart","Quit")
{
  case 1:
    if !load_level() game_end()
    break
  case 2:
    room_goto(lastgame)
    break
  default:
    game_end()
    break
}

