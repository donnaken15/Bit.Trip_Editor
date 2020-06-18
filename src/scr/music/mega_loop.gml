if !designer_mode
if argument0!=""
{
   if !caster_is_playing(mega_music)
   { mega_music=caster_load(argument0)
   caster_loop(mega_music,1,1) }
}
else if argument0!=""
{
   return error_last = "Music is not specified. Nothing will play now."
}
else if caster_error_occurred()
{
   return error_last = "Music is missing/deleted/moved or wasn't extracted with the level properly."
}
