if frame<10frame-=1
x-=1/(room_speed/60)
if alpha <= 0 { instance_destroy() }
