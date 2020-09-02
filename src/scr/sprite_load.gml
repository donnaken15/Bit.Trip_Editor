
// READONLY
// apparently causes invalid floating point operation

// args: id, file, subimgs, xoff, yoff

// didnt plan to add path_gfx by default
// because someone else might want to
// use external file for their level
// though at the same time im overriding
// the smooth and back color removing args

tempvarzmfx = 'sprite_replace('+string(argument0)+',"'+string(argument1)+'",'+string(argument2)+',0,0,'
if os_type = 2
  tempvarzmfx += '0,0,'
tempvarzmfx += string(argument3)+','+string(argument4)+')'
execute_string(tempvarzmfx)
