//draw_window(x,y,width,height)
var xx,yy,ww,hh;
xx=argument0
yy=argument1
ww=argument2+1
hh=argument3+1

draw_set_color(0)
/*draw_set_alpha(0.1)
draw_rectangle(xx+2,yy+2,xx+2+ww,yy+2+hh,0)
draw_rectangle(xx+3,yy+3,xx+3+ww-3,yy+3+hh-2,0)
draw_rectangle(xx+4,yy+4,xx+4+ww-3,yy+4+hh-3,0)
draw_set_alpha(1)*/
draw_set_color(13160660)
draw_rectangle(xx,yy,xx+ww-1,yy+hh-1,0)
draw_set_color(16777215)
draw_line(xx+1,yy+1,xx+ww-2,yy+1)
draw_line(xx+1,yy+1,xx+1,yy+hh-2)
draw_set_color(8421504)
draw_line(xx+1,yy+hh-2,xx+ww-1,yy+hh-2)
draw_line(xx+ww-2,yy+1,xx+ww-2,yy+hh-2)
draw_set_color(0)
draw_line(xx,yy+hh-1,xx+ww-1,yy+hh-1)
draw_line(xx+ww-1,yy,xx+ww-1,yy+hh-1)
