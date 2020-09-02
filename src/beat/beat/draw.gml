draw_set_alpha(1)
switch type {
	case 0:
	case 1:
	case 8:
	case 10:
	case 11:
	case 99:
		if !designer_mode { if mode != 0 {
		draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),color,color,color,color,false) }
		else { draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false) } }
		else draw_rectangle_color((x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
		(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
		color,color,color,color,false)
		if type=99 execute_string(drawcode_)
		break
	case 3:
		if !designer_mode { if mode != 0 { if flip = 1
		draw_rectangle_color(x-(15/2),((y * -1) + room_height)-(15/2),x+(15/2),((y * -1) + room_height)+(15/2),
		color,color,color,color,false)
		else draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
		color,color,color,color,false)}
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
		break
	case 6:
		if !designer_mode { if mode != 0 {
		draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
		color,color,color,color,false) }
		else { draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false) } }
		else draw_rectangle_color(
		(x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
		(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
		color,color,color,color,false)
		break
	case 9:
		draw_set_alpha(image_index<(bpm/flashrate))
		if !designer_mode { if mode != 0 {
		draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),
		c_lime,c_lime,c_lime,c_lime,false) }
		else { draw_rectangle_color(x-(15/2),y-(15/2),x+(15/2),y+(15/2),c_white,c_white,c_white,c_white,false) } }
		else draw_rectangle_color(
		(x-(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y-(15/2))/4.05+(parent.y-174),
		(x+(15/2))/4.05+(parent.x+(parent.sizex/2)-324),(y+(15/2))/4.05+(parent.y-174),
		make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),make_color_rgb(247,216,0),false)
		break
}
if debug_mode{
	draw_set_font(global.fontx1[2])
	draw_text(floor(x)+8,floor(y)+8,"x:"+string(x)+
				 "#y:"+string(y)+
				 "#speed:"+string(speed)+
				 "#direction"+string(direction)+
				 "#hspeed:"+string(hspeed)+
				 "#vspeed:"+string(vspeed)+
				 "#alarm0:"+string(alarm[0])+
				 "#type:"+string(type))
}
