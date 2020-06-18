draw_set_alpha((lifetime>15)+((lifetime<=15)*(lifetime/15)))
if !designer_mode { if mode != 0 {
draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
make_color_rgb(252,165,0),make_color_rgb(252,165,0),make_color_rgb(252,165,0),make_color_rgb(252,165,0),false) }
else { draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false) } }
else draw_rectangle_color(
(x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
make_color_rgb(252,165,0),make_color_rgb(252,165,0),make_color_rgb(252,165,0),make_color_rgb(252,165,0),false)
