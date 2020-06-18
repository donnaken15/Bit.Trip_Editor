switch color
{
  case c_yellow:
    color = make_color_rgb(191,255,255)
    break
  case make_color_rgb(191,255,255):
    color = c_bittrip_orange
    break
  case c_bittrip_orange:
    color = c_red
    break
  case c_red:
    color = make_color_rgb(255,255,90)
    break
  case make_color_rgb(255,255,90):
    color = make_color_rgb(69,178,166)
    break
  case make_color_rgb(69,178,166):
    color = c_green
    break
  case c_green:
    color = make_color_rgb(168,28,138)
    break
  case make_color_rgb(168,28,138):
    color = make_color_rgb(208,90,163)
    break
  case make_color_rgb(208,90,163):
    color = c_teal
    break
  case c_teal:
    color = make_color_rgb(15,198,147)
    break
  case make_color_rgb(15,198,147):
    color = make_color_rgb(61,49,121)
    break
  case make_color_rgb(61,49,121):
    color = c_blue
    break
  case c_blue:
    color = c_yellow
    break
}
alarm[0]=2
