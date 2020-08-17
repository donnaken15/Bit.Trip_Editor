// thanks david

/*

    show_menu_ext(x,y,menu,def)

        Stuff you can use in the "str" argument
        -----
        |-| < makes a line seperator (like in the normal show_menu script)
        |\| < starts a new subsection
        |/| < ends a subsection
        spritename#text < shows the sprite called "spritename" next to "text"
        !^ < before the text part makes the menu inactive
        @S|bgcolor|outlinecol|highlightcolor|textcolor|ina
        ctivetextcolor|highlighttextcolor|
        ^ that sets the color settings for the script, if you place it in first (use -1 for default)
*/

//if realtimesrc { show_menu_pos(argument0, argument1, string(argument2), argument3) exit }

var xx,yy,str,def,i,bg,curs,view;
xx = view_xview+argument0;
yy = argument1;
str = "@S|0|0|8388608|-1|-1|-1|"+argument2;
def = argument3;
curs=window_get_cursor()
draw_set_valign(fa_top)
window_set_cursor(cr_default)
i = instance_create(0,0,designer_menu);
//bg = sprite_create_from_screen(0,0,room_width,room_height,0,1,0,0);
var sub,main,d,parse,pos1,pos2,txt,count;
sub = 0;
main = 0;
d = 0;
i.str[d] = "";
i.spr[d] = -1;
i.sprw[d] = -1;
i.sprh[d] = -1;
i.main[d] = main;
i.sub[d] = sub;
i.type[d] = 0;
i.hassub[d] = false;
i.subid[d] = -1;
i.mainid[d] = -1;
i.endsub[d] = false;
i.active[d] = true;
parse = str;
i.wid[main,sub] = 40;
i.hei[main,sub] = 6;
i.amt_main = 0;
i.amt_sub[i.amt_main] = 0;
count = 1;
for (a=0;a<100;a+=1)
{
    for (b=0;b<100;b+=1)
    {
        i.amt_sub[a] = 0; 
    }
}
i.col1 = c_white;
i.col2 = c_gray;
registry_set_root(0)
i.col3 = make_color_rgb(49,106,197); 
i.col4 = c_black;
i.col5 = c_gray;
i.col6 = c_white;
if (string_copy(parse,1,3) == "@S|")
{
    parse = string_copy(parse,4,string_length(parse));
    var A;
    A = 0;
    while (A < 6)
    {
        pos1 = string_pos("|",parse);
        txt = string_copy(parse,1,pos1-1);
        if (txt != "-1")
        {
            execute_string("("+string(i)+").col"+string(A+1)+"="+string(txt));
        }
        if (txt == "16777215")
        {
            execute_string("("+string(i)+").col"+string(A+1)+"=c_white");
        }
        A += 1;
        parse = string_copy(parse,pos1+1,string_length(parse));
    }
}
while (parse != "")
{
    pos1 = string_pos("|",parse);
    pos2 = string_pos("#",parse);

    if (pos1 != 0 and pos2 != 0)
    {
        if (pos2 < pos1)
        {
            txt = string_copy(parse,1,pos2-1);
            execute_string("("+string(i)+").spr["+string(d)+"]="+string(txt));
            parse = string_copy(parse,pos2+1,string_length(parse));
            i.sprw[d] = sprite_get_width(i.spr[d]);
            i.sprh[d] = sprite_get_height(i.spr[d]);
        }
        else
        {
            txt = string_copy(parse,1,pos1-1);
            switch (txt)
            {
                case "\":
                if (d > 0)
                {
                    main += 1;
                    sub = i.amt_sub[main];
                    i.wid[main,sub] = 40;
                    i.hei[main,sub] = 6;
                    i.hassub[d-1] = true;
                    i.subid[d-1] = sub;
                    i.mainid[d-1] = main;
                    count = max(main,count);
                }
                break;
                case "/":
                if (main > 0)
                {
                    i.amt_sub[main] += 1;
                    main -= 1;
                    sub = i.amt_sub[main];
                    if (main == 0) then sub = 0;
                    i.endsub[d-1] = true;
                }
                break;
                case "-":
                i.str[d] = string(txt);
                i.type[d] = 1;
                if (main != 0)
                {
                    i.hei[main,sub] += 8;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.hei[0,0] += 8;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                break;
                default:
                if (txt != "")
                {
                    if (string_copy(txt,1,2) == "!^")
                    {
                        i.active[d] = false;
                        txt = string_copy(txt,3,string_length(txt));
                    }
                i.str[d] = string(txt);
                if (main != 0)
                {
                    i.wid[main,sub] = max(i.wid[main,sub],string_width(txt)+40);
                    i.hei[main,sub] += 18;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.wid[0,0] = max(i.wid[0,0],string_width(txt)+40);
                    i.hei[0,0] += 18;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                }
                break;
            }
            parse = string_copy(parse,pos1+1,string_length(parse));
            if (txt != "\" and txt != "/" and txt != "")
            {
                d += 1;
                i.str[d] = "";
                i.spr[d] = -1;
                i.sprw[d] = -1;
                i.sprh[d] = -1;
                i.main[d] = main;
                i.sub[d] = sub;
                i.type[d] = 0;
                i.hassub[d] = false;
                i.subid[d] = -1;
                i.mainid[d] = -1;
                i.endsub[d] = false;
                i.active[d] = true;
            }
        }
    }
    if (pos1 != 0 and pos2 == 0)
    {
            txt = string_copy(parse,1,pos1-1);
            switch (txt)
            {
                case "\":
                if (d > 0)
                {
                    main += 1;
                    sub = i.amt_sub[main];
                    i.wid[main,sub] = 40;
                    i.hei[main,sub] = 6;
                    i.hassub[d-1] = true;
                    i.subid[d-1] = sub;
                    i.mainid[d-1] = main;
                    count = max(main,count);
                }
                break;
                case "/":
                if (main > 0)
                {
                    i.amt_sub[main] += 1;
                    main -= 1;
                    sub = i.amt_sub[main];
                    if (main == 0) then sub = 0;
                    i.endsub[d-1] = true;
                }
                break;
                case "-":
                i.str[d] = string(txt);
                i.type[d] = 1;
                if (main != 0)
                {
                    i.hei[main,sub] += 8;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.hei[0,0] += 8;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                break;
                default:
                if (txt != "")
                {
                    if (string_copy(txt,1,2) == "!^")
                    {
                        i.active[d] = false;
                        txt = string_copy(txt,3,string_length(txt));
                    }
                i.str[d] = string(txt);
                if (main != 0)
                {
                    i.wid[main,sub] = max(i.wid[main,sub],string_width(txt)+40);
                    i.hei[main,sub] += 18;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.wid[0,0] = max(i.wid[0,0],string_width(txt)+40);
                    i.hei[0,0] += 18;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                }
                break;
            }
            parse = string_copy(parse,pos1+1,string_length(parse));
            if (txt != "\" and txt != "/" and txt != "")
            {
                d += 1;
                i.str[d] = "";
                i.spr[d] = -1;
                i.sprw[d] = -1;
                i.sprh[d] = -1;
                i.main[d] = main;
                i.sub[d] = sub;
                i.type[d] = 0;
                i.hassub[d] = false;
                i.subid[d] = -1;
                i.mainid[d] = -1;
                i.endsub[d] = false;
                i.active[d] = true;
            }
    }
    if (pos1 == 0 and pos2 != 0)
    {
        txt = string_copy(parse,1,pos2-1);
        execute_string("with("+string(i)+"){spr["+string(d)+"]="+string(txt)+"}");
        //execute_string("i.spr["+string(d)+"]="+string(txt));
        parse = string_copy(parse,pos2+1,string_length(parse));
        i.sprw[d] = sprite_get_width(i.spr[d]);
        i.sprh[d] = sprite_get_height(i.spr[d]);
    }
    if (pos1 == 0 and pos2 == 0)
    {
            txt = parse;
            switch (txt)
            {
                case "\":
                if (d > 0)
                {
                    main += 1;
                    sub = i.amt_sub[main];
                    i.wid[main,sub] = 40;
                    i.hei[main,sub] = 6;
                    i.hassub[d-1] = true;
                    i.subid[d-1] = sub;
                    i.mainid[d-1] = main;
                    count = max(main,count);
                }
                break;
                case "/":
                if (main > 0)
                {
                    i.amt_sub[main] += 1;
                    main -= 1;
                    sub = i.amt_sub[main];
                    if (main == 0) then sub = 0;
                    i.endsub[d-1] = true;
                }
                break;
                case "-":
                i.str[d] = string(txt);
                i.type[d] = 1;
                if (main != 0)
                {
                    i.hei[main,sub] += 8;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.hei[0,0] += 8;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                break;
                default:
                if (txt != "")
                {
                    if (string_copy(txt,1,2) == "!^")
                    {
                        i.active[d] = false;
                        txt = string_copy(txt,3,string_length(txt));
                    }
                i.str[d] = string(txt);
                if (main != 0)
                {
                    i.wid[main,sub] = max(i.wid[main,sub],string_width(txt)+40);
                    i.hei[main,sub] += 18;
                    i.sub[d] = sub;
                    i.main[d] = main;
                }
                else
                {
                    i.wid[0,0] = max(i.wid[0,0],string_width(txt)+40);
                    i.hei[0,0] += 18;
                    i.sub[d] = 0;
                    i.main[d] = 0;
                }
                }
                break;
            }
            parse = "";
            if (txt != "\" and txt != "/" and txt != "")
            {
                d += 1;
                i.str[d] = "";
                i.spr[d] = -1;
                i.sprw[d] = -1;
                i.sprh[d] = -1;
                i.main[d] = main;
                i.sub[d] = sub;
                i.type[d] = 0;
                i.hassub[d] = false;
                i.subid[d] = -1;
                i.mainid[d] = -1;
                i.endsub[d] = false;
                i.active[d] = true;
            }
    }
}
if (sub != 0)
{
    i.amt_mains += 1;
}
var loop,ret,x1,y1,x2,y2,mx,my,ovr,col,minus,vrw,vrh,maxopen,maxover,maxin,txtyoff;
loop = true;
ret = def;
minus = 0;
txtyoff = 1; // changable, depends on font
vrw = room_width
vrh = room_height
var X,Y,W,H,s,key_up,a_open,a_open_sub,a_close;
key_up = false;
count += 1;
for (a=0;a<count;a+=1)
{
    for (b=0;b<=i.amt_sub[a];b+=1)
    {
        i.savex[a,b] = 0;
        i.savey[a,b] = 0;
        if (a == 0 and b == 0)
        {
            i.savex[a,b] = xx;
            i.savey[a,b] = yy;
            if (xx + i.wid[a,b] > vrw) then i.savex[a,b] = xx-i.wid[a,b];
            if (yy + i.hei[a,b] > vrh) then i.savey[a,b] = yy-i.hei[a,b];
        }
    }
    i.open[a] = -1;
}
for (a=0;a<count;a+=1)
{
    s = false;
    for (b=0;b<d;b+=1)
    {
        if (i.main[b] == a)
        {
            if (s == false)
            {
                X = i.savex[i.main[b],i.sub[b]];
                Y = i.savey[i.main[b],i.sub[b]];
                W = i.wid[i.main[b],i.sub[b]];
                H = i.hei[i.main[b],i.sub[b]];
                Y += 4;
                s = true;
            }
            if (i.hassub[b] == true)
            {
                var wt,ht,xt,yt;
                wt = i.wid[i.mainid[b],i.subid[b]];
                ht = i.hei[i.mainid[b],i.subid[b]];
                xt = X+W+1;
                yt = Y-4;
                if (xt + wt < vrw) then i.savex[i.mainid[b],i.subid[b]] = xt;
                else i.savex[i.mainid[b],i.subid[b]] = X-wt-1;
                if (yt + ht < vrh) then i.savey[i.mainid[b],i.subid[b]] = yt;
                else i.savey[i.mainid[b],i.subid[b]] = Y-ht+2+18;
            }
            Y += 10*(i.type[b]!=1)+8;
        }
    }
}
maxopen = 0;
maxover = 0;
maxin = 0;
while (loop)
{
    minus = 0;
    maxopen = 0;
    maxover = 0;
    maxin = 0;
    //draw_sprite_ext(bg,0,view_xview,0,1,1,0,c_white,1);
    clicked_left = false;
    if (key_up == true and mouse_check_button(mb_left))
    {
        key_up = false;
        clicked_left = true;
    }
    if (!mouse_check_button(mb_left) and key_up == false)
    {
        key_up = true;
    }
    mx = mouse_x;
    my = mouse_y;
    a_open = -1;
    a_open_sub = -1;
    a_close = -1;
    ret = -1;
    for (a=0;a<count;a+=1)
    {
        s = false;
        for (b=0;b<d;b+=1)
        {
            if (i.main[b] == a)
            {
                if (s == false)
                {
                    X = i.savex[i.main[b],i.sub[b]];
                    Y = i.savey[i.main[b],i.sub[b]];
                    W = i.wid[i.main[b],i.sub[b]];
                    H = i.hei[i.main[b],i.sub[b]];
                    if (a == 0 or i.open[a] == i.sub[b])
                    {
                        if (mx >= X and mx <= X+W and my >= Y and my <= Y+H)
                        {
                            maxin = max(maxin,a+1);
                        }
                    }
                }
            }
        }
    }
    if (clicked_left == true and loop == true)
    {
        ret = def;
        loop = false;
    }
    for (a=0;a<count;a+=1)
    {
        minus = 0;
        s = false;
        for (b=0;b<d;b+=1)
        {
            if (a == 0 and i.main[b] == 0)
            or (i.main[b] == a and i.open[a] == i.sub[b])
            {
                maxopen = max(a+1,maxopen);
                col = i.col4;
                if (s == false)
                {
                    X = i.savex[i.main[b],i.sub[b]];
                    Y = i.savey[i.main[b],i.sub[b]];
                    W = i.wid[i.main[b],i.sub[b]];
                    H = i.hei[i.main[b],i.sub[b]];
                    draw_window(X,Y,W,H)
                    Y += 4;
                    s = true;
                }
                x1 = X;
                y1 = Y;
                x2 = X+W;
                y2 = Y+18;
                ovr = (mx >= x1 and mx <= x2 and my >= y1 and my < y2);
                if (i.type[b] == 0)
                {
                    if (ovr == true)
                    {
                        maxover = max(maxover,a+1);
                        if (a_close < maxover) then a_close = -1;
                        if (a_open < maxover) then a_open = -1;
                        if (i.hassub[b] == true and i.active[b] == true)
                        {
                            a_open = a+1;
                            a_open_sub = b;
                        }
                        if (i.hassub[b] == false)
                        {
                            a_close = a+1;
                        }
                        if (clicked_left == true)
                        {
                            if (i.hassub[b] == false and i.active[b] == true)
                            {
                                loop = false;
                                ret = max(ret,b-minus);
                            }
                            else
                            {
                                loop = true;
                                ret = -1;
                            }
                        }
                    }
                    if (ovr == true and maxin == a+1)
                    {
                        draw_rectangle_color(x1+4,y1,x2-4,y2-1,i.col3,i.col3,i.col3,i.col3,0);
                        col = i.col6;
                    }
                    if (i.spr[b] != -1)
                    {
                        if (i.spr[b]=100) {
                            draw_sprite_ext(form_icons,0,X+5,Y+1,1,1,0,bgcolor1,1);
                        } if (i.spr[b]=101) {
                            draw_sprite_ext(form_icons,0,X+5,Y+1,1,1,0,bgcolor2,1);
                        } if (i.spr[b]=1000) {
                            draw_sprite(form_check,0,X+4,Y+1);
                        } else if (i.spr[b]<100) {
                            draw_sprite(form_icons,i.spr[b],X+4,Y+1);
                        }
                    }
                    var str1,str2;
                    if (string_count("&",string(i.str[b]))=0) {
                        str1=string(i.str[b])
                        str2=""
                    } else {
                        str1=string_copy(string(i.str[b]),1,string_pos("&",string(i.str[b]))-1)
                        str2=string_copy(string(i.str[b]),string_pos("&",string(i.str[b]))+1,string_length(string(i.str[b]))-(string_pos("&",string(i.str[b]))))
                    }
                    if (i.active[b] = true) {
                        if (ovr == true and maxin == a+1) {
                            draw_text_color(X+22,Y+1+txtyoff,str1,c_white,c_white,c_white,c_white,1);
                            draw_set_halign(fa_right)
                            draw_text_color(X+W-8,Y+1+txtyoff,str2,c_white,c_white,c_white,c_white,1);
                            draw_set_halign(fa_left)
                        } else {
                            draw_text_color(X+22,Y+1+txtyoff,str1,0,0,0,0,1);
                            draw_set_halign(fa_right)
                            draw_text_color(X+W-8,Y+1+txtyoff,str2,0,0,0,0,1);
                            draw_set_halign(fa_left)
                        }
                    } else {
                        if !(ovr == true and maxin == a+1) {
                            draw_text_color(X+23,Y+2+txtyoff,str1,c_white,c_white,c_white,c_white,1);
                            draw_set_halign(fa_right)
                            draw_text_color(X+W-7,Y+2+txtyoff,str2,c_white,c_white,c_white,c_white,1);
                            draw_set_halign(fa_left)
                        }
                        draw_text_color(X+22,Y+1+txtyoff,str1,c_gray,c_gray,c_gray,c_gray,1);
                        draw_set_halign(fa_right)
                        draw_text_color(X+W-8,Y+1+txtyoff,str2,c_gray,c_gray,c_gray,c_gray,1);
                        draw_set_halign(fa_left)
                    }
                    if (i.hassub[b] == true)
                    {
                        draw_triangle_color(X+W-6,Y+9,X+W-10,Y+5,X+W-10,Y+13,col,col,col,0);
                    }
                    Y += 18;
                }
                if (i.type[b] == 1)
                {
                    x1 = X;
                    y1 = Y;
                    x2 = X+W;
                    y2 = Y+18;
                    ovr = (mx >= x1 and mx <= x2 and my >= y1 and my < y2);
                    if (ovr == true)
                    {
                        maxover = max(maxover,a+1);
                        if (a_close < maxover) then a_close = -1;
                        if (a_open < maxover) then a_open = -1;
                    }
                    draw_line_color(X+4,Y+3,X+W-3,Y+3,8421504,8421504);
                    draw_line_color(X+4,Y+4,X+W-3,Y+4,-1,-1);
                    minus += 1;
                    Y += 8;
                }

            }
            else if (i.type[b] == 1)
            {
                minus += 1;
            }
        }
    }
    if (a_open != -1)
    {
        if (a_open >= maxover)
        {
            for (c=a_open;c<count;c+=1)
            {
                i.open[c] = -1;
            }
            i.open[a_open] = i.subid[a_open_sub];
        }
    }
    if (a_close != -1 and a_close >= maxover)
    {
        for (c=a_close;c<count;c+=1)
        {
            i.open[c] = -1;
        }
    }
    screen_refresh();
    io_handle();
    window_handle();
}
with (i) instance_destroy();
//sprite_delete(bg);
window_set_cursor(curs)
mouse_clear(mb_left)
//screen_redraw()
io_clear()
return ret;
