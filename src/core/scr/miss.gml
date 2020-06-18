if combo >= 10
{
   misstxt = instance_create(plus.x+4,plus.y+4,core_particle_miss)
}

//caster_load("Beat\Sounds\Effects\Level1\BeatMiss.ogg"),1,1) }

combo = 0
if nofail = 0 {
              if difficulty = 0
                  switch mode {
                      case 0: nether_lose += .5 break
                      case 1: hyper_lose += .5 break
                      case 2: mega_lose += .5 break
                      case 3: super_lose += .5 break
              }
              if difficulty
                  switch mode {
                      case 0: nether_lose += 1 break
                      case 1: hyper_lose += 1 break
                      case 2: mega_lose += 1 break
                      case 3: super_lose += 1 break
              }

if super_lose>=1 && mode = 3 {
   mode = 2
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
   mega_up = 0
   mega_lose = 0
}

if hyper_lose>=14 && mode = 1 {
   mode = 0
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
   nether_up = 0
   nether_lose = 0
}

if mega_lose>=8 && mode = 2 {
   mode = 1
   caster_play(snd_mode_down,1,1)
   plus.alarm[11]=1
   hyper_up = 0
   hyper_lose = 0
   multi=1
}

if hyper_lose>=7 && mode = 1 {
   dangertxt = instance_create(room_width/2,room_height/1.25,core_particle_danger)
}

if nether_lose>=16 && mode = 0 {
   gameover=1
}

}

if dangertxtvisible=1 && misstxtvisible=1
{
   dangertxt.y+=32
   misstxt.y-=32
   dangertxtvisible=0
   misstxtvisible=0
}
