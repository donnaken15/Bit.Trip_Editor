combo += 1
if combo >= 10 {
switch difficulty {
       case 0: score += (50+combo)*multi instance_create(paddle.x+4,paddle.y,beat_particle_combo) break
       case 1: score += (100+combo)*multi instance_create(paddle.x+4,paddle.y,beat_particle_combo) break
       }
}
if combo < 10 {
switch difficulty {
       case 0: score += 50*multi break
       case 1: score += 100*multi break
       }
}
if test = 0
{
    if nowin = 0
    {
        switch mode {
            case 0: nether_up += 2 / (difficulty + 1) break // not good idea, may /0 in certain cases :p
            case 1: hyper_up += 2 / (difficulty + 1) break
            case 2: mega_multi += 2 / (difficulty + 1) break
        }
    }
}
if test = 1 && mode = 0
{ if difficulty = 1 { nether_up += 1 } else { nether_up += 2 } }
if !designer_mode
if ispowerup = 0
switch mode {
       case 0: caster_play(snd_nether,1,1) break
       case 1: {
            switch soundtype {
                   case 0: caster_play(choose(snd_beat_lvl1_h_hit1,snd_beat_lvl1_h_hit2,snd_beat_lvl1_h_hit3,snd_beat_lvl1_h_hit4,snd_beat_lvl1_h_hit5),1,1) break
                   case 1: caster_play(choose(snd_beat_lvl2_h_hit1,snd_beat_lvl2_h_hit2,snd_beat_lvl2_h_hit3,snd_beat_lvl2_h_hit4),1,1) break
                   case 2: caster_play(choose(snd_beat_lvl3_h_hit1,snd_beat_lvl3_h_hit2,snd_beat_lvl3_h_hit3,snd_beat_lvl3_h_hit4),1,1) break
            }
       } break
       case 2: {
            switch soundtype {
                   case 0: caster_play(choose(snd_beat_lvl1_m_hit1,snd_beat_lvl1_m_hit2,snd_beat_lvl1_m_hit3,snd_beat_lvl1_m_hit4),1,1) break
                   case 1: caster_play(choose(snd_beat_lvl2_m_hit1,snd_beat_lvl2_m_hit2,snd_beat_lvl2_m_hit3,snd_beat_lvl2_m_hit4),1,1) break
                   case 2: caster_play(choose(snd_beat_lvl3_m_hit1,snd_beat_lvl3_m_hit2,snd_beat_lvl3_m_hit3,snd_beat_lvl3_m_hit4),1,1) break
                   } break
       } break
}
if hyper_up>=80 && mode = 1 {
   caster_play(snd_mode_up,1,1)
   paddle.alarm[0]=1
   mode = 2
   mega_multi=0
   mega_lose=0
}
if nether_up>=20 && mode = 0 {
   caster_play(snd_mode_up,1,1)
   paddle.alarm[12]=1
   mode = 1
   hyper_up=0
   hyper_lose=0
}
if mega_multi>14 && mode = 2 {
   mega_multi=0
   caster_play(snd_mode_multi,1,1)
   multi += 1;
}
if special = 2
{
   chalbeatshit += 1
   with beat_challenge_count instance_destroy()
   instance_create(room_width/2,room_height/2,beat_challenge_count)
}
if mode=2
{
   instance_create(paddle.x,y,beat_particle_mega_hit)
}
