draw_set_alpha(1)
if !designer_mode { if mode != 0 { if flip = 1
draw_rectangle_color(x-(15/2),((y * -1) + room_height)-(15/2),x+(15/2),((y * -1) + room_height)+(15/2),
make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),false)
else draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),false)}
else { if flip = 0 draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false)
else draw_rectangle_color(x-(15/2),((y * -1) + 720)-(15/2),x+(15/2),((y * -1) + 720)+(15/2),
c_white,c_white,c_white,c_white,false) } }
else { if mode != 0 { if flip = 1
draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(((y*-1)+room_height)-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(((y*-1)+room_height)+(15/2))/4.05+(parent.y-174),
make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),false)
else draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),make_color_rgb(184,249,255),false)}
else { if flip = 0 draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),c_white,c_white,c_white,c_white,false)
else draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),((y*-1)-(15/2))/4.05+(parent.y-174),
(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),((y*-1)+(15/2))/4.05+(parent.y-174),
c_white,c_white,c_white,c_white,false) } }
