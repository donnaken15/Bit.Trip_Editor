draw_set_color(c_blue)
draw_set_alpha(.25+(frame/240))
for (l = 0; l <= (special / 3); l += 1)
      for (i = 1; i <= 2; i += 1)
      {
        draw_rectangle(x-36-(-6*(frame)*(i*.5)),
                       y-36-(1*(frame)*(i*.5)),
                       x+36-(-6*(frame)*(i*.5)),
                       y+36-(1*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(-10*(frame)*(i*.5)),
                       y-36-(-4*(frame)*(i*.5)),
                       x+36-(-10*(frame)*(i*.5)),
                       y+36-(-4*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(-12*(frame)*(i*.5)),
                       y-36-(8*(frame)*(i*.5)),
                       x+36-(-12*(frame)*(i*.5)),
                       y+36-(8*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(-16*(frame)*(i*.5)),
                       y-36-(6*(frame)*(i*.5)),
                       x+36-(-16*(frame)*(i*.5)),
                       y+36-(6*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(24*(frame)*(i*.5)),
                       y-36-(.5*(frame)*(i*.5)),
                       x+36-(24*(frame)*(i*.5)),
                       y+36-(.5*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(15*frame*(i*.5)),
                       y-36-(9*(frame)*(i*.5)),
                       x+36-(15*frame*(i*.5)),
                       y+36-(9*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(-7*(frame)*(i*.5)),
                       y-36-(-12*(frame)*(i*.5)),
                       x+36-(-7*(frame)*(i*.5)),
                       y+36-(-12*(frame)*(i*.5)),0)
        draw_rectangle(x-36-(4*(frame)*(i*.5)),
                       y-36-(-12*(frame)*(i*.5)),
                       x+36-(4*(frame)*(i*.5)),
                       y+36-(-12*(frame)*(i*.5)),0)
      }
