if !designer_mode
if argument0!=""
{
   if !caster_is_playing(mega_music)
   { mega_music=caster_load(argument0)
   caster_play(mega_music,1,mode-1) }
}
else if argument0!=""
{
   return show_error("Music is not specified. Nothing will play now.",false)
}
else if caster_error_occurred()
{
   return show_error("Music is missing/deleted/moved or wasn't extracted with the level properly.",false)
}
