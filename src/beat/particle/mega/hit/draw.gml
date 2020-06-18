if test draw_set_color(c_bittrip_orange)
else draw_set_color(c_bittrip_yellow)
draw_set_alpha(.25+(frame/40))
for (l = 0; l <= (special / 3); l += 1)
  for (k = -1; k <= 1; k += 2)
    for (j = -1; j <= 1; j += 2)
      for (i = 1; i <= 2; i += 1)
      {
        draw_rectangle(x-36-(9*(frame*k)*i),
                             y-36-(36*(frame*j)*i),
                             x+36-(9*(frame*k)*i),
                             y+36-(36*(frame*j)*i),0)
        draw_rectangle(x-36-(36*frame*i),
                             y-36-(27*(frame*j)*i),
                             x+36-(36*frame*i),
                             y+36-(27*(frame*j)*i),0)
        draw_rectangle(x-36-(4.5*(frame*k)*i),
                             y-36-(90*(frame*j)*i),
                             x+36-(4.5*(frame*k)*i),
                             y+36-(90*(frame*j)*i),0)
      
      }
