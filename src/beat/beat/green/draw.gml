draw_set_alpha(image_index<(bpm/flashrate))
if !designer_mode { if mode != 0 {
draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
c_lime,c_lime,c_lime,c_lime,false) }
else { draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false) } }
else draw_rectangle_color(
(x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
