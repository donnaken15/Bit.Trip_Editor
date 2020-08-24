image_xscale = 13.5+(size)
image_yscale = image_xscale

if keyboard_check_pressed(vk_left)
	hspeed -= 10

if keyboard_check_pressed(vk_up)
	vspeed -= 10

if keyboard_check_released(vk_left)
	hspeed += 10

if keyboard_check_released(vk_up)
	vspeed += 10

if keyboard_check_pressed(vk_right)
	hspeed += 10

if keyboard_check_pressed(vk_down)
	vspeed += 10

if keyboard_check_released(vk_right)
	hspeed -= 10

if keyboard_check_released(vk_down)
	vspeed -= 10

//again this looks wasteful
//maybe use speed*bool and/or just keyboard_check

if keyboard_check_pressed(187) { void_hit() }
if keyboard_check_pressed(189) { void_miss() }
