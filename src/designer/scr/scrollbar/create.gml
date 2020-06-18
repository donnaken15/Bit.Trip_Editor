/*

    CALL:           scrollbar_create(type,sprite,mousewheel)

    INFO:           Creates a new scrollbar and returns with the ID of it.

    ARGUMENTS:      type        =   0 if horizontal,
                                    1 if vertical.
                    sprite      =   The sprite of the scrollbar.
                    mousewheel  =   If you should be able to scroll with the mouse wheel.

    WRITTEN BY:     Davve

*/
var type,spr,mw;
type=argument0
spr=argument1
mw=argument2

if (!variable_global_exists("___sbcount")) {
    global.___sbcount=0
    global.___sbtimer=0
    global.___sbdrag=-1
    global.___mxprev=mouse_x
    global.___myprev=mouse_y
    global.___sbcurrent=-1
}
global.___sb[global.___sbcount,0]=type
global.___sb[global.___sbcount,1]=0
global.___sb[global.___sbcount,2]=spr
global.___sb[global.___sbcount,3]=mw
global.___sbcount+=1

return global.___sbcount-1
