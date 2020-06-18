if special = powerup + 1
{
  if special = 2
  {
    caster_play(snd_challenge,1,1)
    instance_create(room_width/2,room_height/2,beat_challenge_finish)
    score += chalbeatshit * 10000
  }
  special = 0
}
paddle_visible=1
instance_destroy()
