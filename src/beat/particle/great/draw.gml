draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_font(global.fontx5[4])
alpha -= 0.03/(room_speed/60)
draw_text_transformed_color(x,y,"GREAT",2.4,2.4,0,
current_mega_colors[5],current_mega_colors[5],
current_mega_colors[5],current_mega_colors[5],alpha)
draw_set_alpha(.25+(frame/40))
//if instance_number(beat_particle_great) > 10
for (l = 0; l <= (special / 3); l += 1)
  for (k = -1; k <= 1; k += 2)
    for (j = -1; j <= 1; j += 2)
      for (i = 1; i <= 2; i += 1)
      {
        draw_rectangle_color(x-36+(9*(frame*k)*i),
                             y-36-(36*(frame*j)*i),
                             x+36+(9*(frame*k)*i),
                             y+36-(36*(frame*j)*i),
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             0)
        draw_rectangle_color(x-36+(36*frame*i),
                             y-36-(27*(frame*j)*i),
                             x+36+(36*frame*i),
                             y+36-(27*(frame*j)*i),
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             0)
        draw_rectangle_color(x-36+(4.5*(frame*k)*i),
                             y-36-(90*(frame*j)*i),
                             x+36+(4.5*(frame*k)*i),
                             y+36-(90*(frame*j)*i),
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             c_bittrip_yellow,
                             0)
      
      }
