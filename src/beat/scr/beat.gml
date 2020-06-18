/// BEAT_BEAT ( TYPE , Y POSITION , SPEED , DIRECTION , OPT ARGS )

 /*-------------
\ 0 = NORMAL   \
\ 1 = ORANGE   \
\ 2 = PINK     \
\ 3 = FOLLOW   \
\ 4 = BLUE     \
\ 5 = NEXTSCR  \
\ 6 = CYAN1    \
\ 7 = CYAN2    \
\ 8 = STILL    \
\ 9 = GREEN    \
\ 10 = VIOLET  \
\ 11 = POWERUP \
\ 99 = CUSTOM  \
\              \
\              \
\              \
-------------*/

var _beat

if room = beat || room = designer
  switch argument[0]
  {
  case 0:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_normal)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 }
     }
     break
  case 1:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_orange)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] origspeed = argument[2] direction = argument[3] - 180 bouncex = argument[4] bouncey = argument[5] hits = 2 if argument_count > 6 keepvsp = argument[6] if argument_count > 8 hits = argument[7] }
     }
     break
  case 3:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_follow)
         if designer_mode _beat.parent = id
         with _beat { y = 360 hit = 0 speed = argument[1] if argument[2] > 0 follow = argument[2] else show_error("Value (argument 2) must be non-negative.",false) if argument_count > 3 flip = argument[3] }
     }
     break
  case 4:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_blue)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 }
     }
     break
  case 6:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_cyan)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 bounce = argument[4] bouncespeed = argument[5] if argument_count > 6 vspeed = argument[6] }
     }
     break
  case 8:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_still)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] originalspeed = argument[2]*-1 direction = argument[3] - 180 staytime = argument[4] }
     }
     break
  case 9:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_green)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 if argument_count>4 flashrate = argument[4] else flashrate = 4 }
     }
     break
  case 10:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_violet)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] fliptime = argument[4] alarm[0] = fliptime velocity = argument[3] vspeed = velocity*.645 }
     }
     break
  case 11:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_powerup)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 powerup = argument[4] poweruptime = argument[5] if argument[4] = 1 { chalbeats = argument[6] chalbeatshit = 0 } }
     }
     break
  case 99:
     {
         _beat = instance_create(1280+(15/2),argument1,beat_beat_custom)
         if designer_mode _beat.parent = id
         with _beat { hit = 0 y = argument[1] speed = argument[2] direction = argument[3] - 180 color = argument[4] execute_string(argument[5]) stepcode_ = argument[6] drawcolor_ = argument[7] }
     }
     break
  default:
     {
         show_error("Invalid beat type.",false)
     }
     break
  }

return _beat
