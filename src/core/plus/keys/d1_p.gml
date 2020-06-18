pos = 0
if mouse_x<(1280/2-16)
{
  if mouse_y<(720/2-16)
    side = 0
  if mouse_y>(720/2+16)
  {
    pos = .5
    side = 2
  }
  pos += (mouse_x + 16) / (1280-32)
  life = 140
}
if mouse_x>(1280/2+16)
{
  if mouse_y<(720/2-16)
    side = 1
  if mouse_y>(720/2+16)
    side = 3
  pos = (mouse_y + 16) / (720-32)
  life = 320
}
core_beat(0,side,pos,5,0,life)
