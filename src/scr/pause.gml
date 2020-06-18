timeline_running=false
pause_ctrl=instance_create(0,0,pauser)
pause_ctrl.parent = id
with pause_ctrl { alarm[0]=argument0 }
paused = true
