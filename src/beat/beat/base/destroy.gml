if mode = 2 instance_create(x-80,y,beat_particle_great)
if hit = 1 && nodeathsound = 0
{
   if mode > 0
   {
        switch mode {
              case 1:
                   switch soundtype {
                        case 0: caster_play(choose(snd_beat_lvl1_d_hit1,snd_beat_lvl1_d_hit2,snd_beat_lvl1_d_hit3,snd_beat_lvl1_d_hit4),.5,1) break
                        case 1: caster_play(choose(snd_beat_lvl2_d_hit1,snd_beat_lvl2_d_hit2,snd_beat_lvl2_d_hit3,snd_beat_lvl2_d_hit4),.5,1) break
                        case 2: caster_play(choose(snd_beat_lvl3_d_hit1,snd_beat_lvl3_d_hit2,snd_beat_lvl3_d_hit3,snd_beat_lvl3_d_hit4),.5,1) break
                   }
              break
              case 2:
                   switch soundtype {
                        case 0: caster_play(choose(snd_beat_lvl1_d_hit1,snd_beat_lvl1_d_hit2,snd_beat_lvl1_d_hit3,snd_beat_lvl1_d_hit4),.5,1) break
                        case 1: caster_play(choose(snd_beat_lvl2_d2_hit1,snd_beat_lvl2_d2_hit2,snd_beat_lvl2_d2_hit3,snd_beat_lvl2_d2_hit4),.5,1) break
                        case 2: caster_play(choose(snd_beat_lvl3_d_hit1,snd_beat_lvl3_d_hit2,snd_beat_lvl3_d_hit3,snd_beat_lvl3_d_hit4),.5,1) break
                   }
              break
       }
   }
}

