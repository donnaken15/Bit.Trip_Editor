// READONLY
// for some reason this lags as execute_string instead of a script

// 0 = west, 1 = north, 2 = east, 3 = south

/*draw_rectangle(room_width/2-8-549,room_height/2-8,
room_width/2+7-32,room_height/2+7,false)
draw_rectangle(room_width/2-8+563,room_height/2-8,
room_width/2+24,room_height/2+7,false)
draw_rectangle(room_width/2-8,room_height/2-8-17,
room_width/2+7,room_height/2+7-307,false)
draw_rectangle(room_width/2-8,room_height/2-8+32,
room_width/2+7,room_height/2+7+295,false)*/

switch argument[0]
{
  case -1:
    x1 = 0
    y1 = 0
    x2 = 0
    y2 = 0
    break
  case 0:
    x1 = room_width/2-8-549
    y1 = room_height/2-8
    x2 = room_width/2+7-32
    y2 = room_height/2+7
    break
  case 2:
    x1 = room_width/2-8+563
    y1 = room_height/2-8
    x2 = room_width/2+24
    y2 = room_height/2+7
    break
  case 1:
    x1 = room_width/2-8
    y1 = room_height/2-8-17
    x2 = room_width/2+7
    y2 = room_height/2+7-307
    break
  case 3:
    x1 = room_width/2-8
    y1 = room_height/2-8+32
    x2 = room_width/2+7
    y2 = room_height/2+7+295
    break
}

if arugment[0] = -1
return false
else
return collision_rectangle(x1, y1, x2, y2, argument[1], false, true)
