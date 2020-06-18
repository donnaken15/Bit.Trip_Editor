if alpha>0
{
  draw_set_color(c_red)
  draw_set_alpha(alpha)
  draw_set_font(global.fontx5[5])
  draw_set_halign(fa_left)
  draw_set_valign(fa_top)
  draw_text(0,0,string_upper(text)+"# #caster error: "+caster_error_message()+"# #")
  alpha-=.05
}
