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
\ 12 = RED     \
\ 50 = GROUPED \
\ 99 = CUSTOM  \
\              \
\              \
\              \
-------------*/

var _beat

if room = beat || room = designer {
  _beat = instance_create(1280+(15/2),argument1,beat_beat_base)
  if designer_mode _beat.parent = id
  // normal / base params
  with _beat { type = argument[0] hit = 0 y = argument[1]
  speed = argument[2] direction = argument[3] - 180
  color = make_color_rgb(247,216,0)
    switch argument[0]
    {
    // do nothing for these types because stuff can be handled without setting args
	case 0:
    //case 5:
    //case 12:
       break
    case 1:
	      // orange
		  color = make_color_rgb(252,165,0) origspeed = argument[2] bouncex = argument[4] bouncey = argument[5] hits = 2 if argument_count > 6 keepvsp = argument[6] if argument_count > 8 hits = argument[7]
       break
    case 3:
          // follow
          color = make_color_rgb(184,249,255) y = 360 speed = argument[1] if argument[2] > 0 follow = argument[2] else show_error("Value (argument 2) must be non-negative.",false) if argument_count > 3 flip = argument[3]
       break
    //case 4:
          // measure beat, brighter cyan / blue
          //pulse = argument[4] if argument_count > 5 minsize = argument[5]
       //break
    case 6:
          // cyan
		  color = c_bittrip_cyan bounce = argument[4]
		  bouncespeed = argument[5] if argument_count > 6 vspeed = argument[6]
       break
    case 8:
          // still
          color = make_color_rgb(250,250,90) originalspeed = argument[2]*-1 staytime = argument[4]
       break
    case 9:
          // green
          if argument_count>4 flashrate = argument[4] else flashrate = 4
       break
    //case 10:
          // violet
   	      // PLEASE FREAKING WORK
          //fliptime = argument[4] alarm[0] = fliptime velocity = argument[3] vspeed = velocity*.645
       //break
    case 11:
          // powerup
		  color = make_color_rgb(255,255,255)
          powerup = argument[4] poweruptime = argument[5]
		  if argument[4] = 1 { chalbeats = argument[6] chalbeatshit = 0 }
		  ispowerup = 1 poweruptime = round(poweruptime)
       break
    case 50:
       // grouped beat, require coords for each new beat
	   // maybe workaround ~16 arg limit with string argument
	   // maybe something like type,speed,x,y,x,y,x,y,x,y,x,y
	   // or type,speed,y center,x,y,x,y,x,y and use relativity
	   // and use like 50,10,0,10,60,-20,110,30
	   // just remembered i need to include feature to draw line between 3 beats or whatever ughhh
       break
    case 99:
           color = argument[4] execute_string(argument[5]) stepcode_ = argument[6] drawcolor_ = argument[7] diecode_ = argument[8]
       break
    default:
       {
          show_error("Invalid beat type.",false)
       }
       break
    }
  }
}

return _beat
