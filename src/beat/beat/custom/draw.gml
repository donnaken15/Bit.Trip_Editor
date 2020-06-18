draw_set_alpha(1)if !designer_mode if mode != 0 {
draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),color,color,color,color,false) }
else draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),color,color,color,color,false)
else { draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),c_white,c_white,c_white,c_white,false) }
execute_string(drawcode_)

