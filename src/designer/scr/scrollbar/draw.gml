/*

    CALL:           scrollbar_draw(id,x,y,w/h,maxw/h)

    INFO:           Draws the selected scrollbar. The value is measured in pixels.

    ARGUMENTS:      id          =   The ID of the scrollbar to draw.
                    x           =   The x starting position of the scrollbar.
                    y           =   The y starting position of the scrollbar.
                    w/h         =   The width or height of the scrollbar (buttons not included).
                    maxw/h      =   The maximum width or height (buttons not included).

    WRITTEN BY:     Davve

*/
var sb,xx,yy,wh,mwh,spr,sw,sh,sel,sel2,a,sp,ep,tp;
sb=argument0
xx=argument1
yy=argument2
wh=max(-16,argument3)
mwh=argument4
spr=global.___sb[sb,2]
sw=sprite_get_width(spr)
sh=sprite_get_height(spr)
tp=global.___sb[sb,0]

if (global.___sbcurrent=sb) {
    global.___sbtimer=max(0,(global.___sbtimer-1)*mouse_check_button(mb_left))
}
if ((!mouse_check_button(mb_left) && global.___sbdrag>-1)) {
    global.___sbdrag=-1
}
if (mwh>wh && wh>0 && loading=0) {
    sp=((xx+sw)*(tp=0))+((yy+sh)*(tp>0))+(global.___sb[sb,1]*(wh/mwh))
    ep=sp+max((wh*(wh/mwh)),4)
    if (global.___sbdrag=sb && ((mouse_x*(tp=0))+(mouse_y*(tp>0)))>=((xx+sw)*(tp=0))+((yy+sh)*(tp>0)) && ((mouse_x*(tp=0))+(mouse_y*(tp>0)))<((xx+(sw*2)+wh)*(tp=0))+((yy+(sh*2)+wh)*(tp>0))) {
        global.___sb[sb,1]+=(mwh/wh)*(((mouse_x*(tp=0))+(mouse_y*(tp>0)))-((global.___mxprev*(tp=0))+(global.___myprev*(tp>0))))
        global.___mxprev=mouse_x
        global.___myprev=mouse_y
    }
    if (global.___sbcurrent=sb && global.___sb[sb,3]>0) {
        global.___sb[sb,1]+=((-1*mouse_wheel_up())+(1*mouse_wheel_down()))*ceil((mwh/wh)*((ep-sp)/3))
    }
    sel=(global.___sbdrag=-1 && (mouse_x*(tp=0))+(mouse_y*(tp>0))>=((xx+sw)*(tp=0))+((yy+sh)*(tp>0)) && (mouse_x*(tp=0))+(mouse_y*(tp>0))<sp && mouse_check_button(mb_left) && (mouse_y*(tp=0))+(mouse_x*(tp>0))>(yy*(tp=0))+(xx*(tp>0)) && (mouse_y*(tp=0))+(mouse_x*(tp>0))<((yy+sh)*(tp=0))+((xx+sh)*(tp>0)))
    sel+=2*(global.___sbdrag=-1 && (mouse_x*(tp=0))+(mouse_y*(tp>0))>ep && (mouse_x*(tp=0))+(mouse_y*(tp>0))<((xx+sw+wh)*(tp=0))+((yy+sh+wh)*(tp>0)) && mouse_check_button(mb_left) && (mouse_y*(tp=0))+(mouse_x*(tp>0))>(yy*(tp=0))+(xx*(tp>0)) && (mouse_y*(tp=0))+(mouse_x*(tp>0))<((yy+sh)*(tp=0))+((xx+sh)*(tp>0)))
    if (sel>0 && global.___sbtimer=0) {
        global.___sb[sb,1]+=((-1*(sel=1))+(1*(sel=2)))*ceil((mwh/wh)*((ep-sp)))
        global.___sb[sb,1]=max(0,min(mwh-((ep-sp)*(mwh/wh)),global.___sb[sb,1]))
        global.___sbtimer=ceil(fps/(15-(12*mouse_check_button_pressed(mb_left))))
        global.___sbcurrent=sb
    }
    global.___sb[sb,1]=min(mwh-((ep-sp)*(mwh/wh)),max(0,global.___sb[sb,1]))
    sp=((xx+sw)*(tp=0))+((yy+sh)*(tp>0))+(global.___sb[sb,1]*(wh/mwh))
    ep=sp+max((wh*(wh/mwh)),4)
    draw_sprite_ext(spr,(13*(tp=0))+(17*(tp>0)),(floor(sp+1)*(tp=0))+(xx*(tp>0)),(yy*(tp=0))+(floor(sp+1)*(tp>0)),(ceil(ep-2)-floor(sp))*(tp=0)+(tp>0),(ceil(ep-2)-floor(sp))*(tp>0)+(tp=0),0,-1,1)
    draw_sprite(spr,(12*(tp=0))+(16*(tp>0)),(floor(sp)*(tp=0))+(xx*(tp>0)),(floor(sp)*(tp>0))+(yy*(tp=0)))
    draw_sprite(spr,(14*(tp=0))+(18*(tp>0)),((ceil(ep)-2)*(tp=0))+(xx*(tp>0)),((ceil(ep)-2)*(tp>0))+(yy*(tp=0)))
    sel=(((mouse_x*(tp=0))+(mouse_y*(tp>0)))>=sp && ((mouse_x*(tp=0))+(mouse_y*(tp>0)))<ep && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))>=(yy*(tp=0))+(xx*(tp>0)) && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))<((yy+sh)*(tp=0))+((xx+sw)*(tp>0)) && mouse_check_button_pressed(mb_left))
    if (sel=1 && global.___sbdrag=-1) {
        global.___sbcurrent=sb
        global.___sbdrag=sb
        global.___mxprev=mouse_x
        global.___myprev=mouse_y
    }
} else if (global.___sbdrag=sb) {
    global.___sbdrag=-1
}
sel=(((mouse_x*(tp=0))+(mouse_y*(tp>0)))>=(xx*(tp=0))+(yy*(tp>0)) && ((mouse_x*(tp=0))+(mouse_y*(tp>0)))<((xx+sw)*(tp=0))+((yy+sh)*(tp>0)) && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))>=(yy*(tp=0))+(xx*(tp>0)) && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))<((yy+sh)*(tp=0))+((xx+sw)*(tp>0)) && mouse_check_button(mb_left) && global.___sbdrag=-1 && mwh>wh)
sel2=(((mouse_x*(tp=0))+(mouse_y*(tp>0)))>=((xx+wh+sw)*(tp=0))+((yy+wh+sh)*(tp>0)) && ((mouse_x*(tp=0))+(mouse_y*(tp>0)))<((xx+(sw*2)+wh)*(tp=0))+((yy+(sh*2)+wh)*(tp>0)) && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))>=(yy*(tp=0))+(xx*(tp>0)) && ((mouse_y*(tp=0))+(mouse_x*(tp>0)))<((yy+sh)*(tp=0))+((xx+sw)*(tp>0)) && mouse_check_button(mb_left) && global.___sbdrag=-1 && mwh>wh)
if (sel+sel2>0 && global.___sbtimer=0 && loading=0) {
    global.___sb[sb,1]+=((sel2=1)-(sel=1))*10//((-1*(sel=1))+(1*(sel2=1)))*ceil((mwh/wh)*((ep-sp)/3))
    global.___sb[sb,1]=max(0,min(mwh-((ep-sp)*(mwh/wh)),global.___sb[sb,1]))
    global.___sbtimer=ceil(fps/(15-(12*mouse_check_button_pressed(mb_left))))
    global.___sbcurrent=sb
}
draw_sprite(spr,(0*(tp=0))+(6*(tp>0))+(sel>0 || mwh<=wh || loading>0)+(mwh<=wh || loading>0),xx,yy)
draw_sprite(spr,(3*(tp=0))+(9*(tp>0))+(sel2>0 || mwh<=wh || loading>0)+(mwh<=wh || loading>0),((xx+wh+sw)*(tp=0))+(xx*(tp>0)),(yy*(tp=0))+((yy+wh+sh)*(tp>0)))
