switch (argument0)
{
	case 0:
		if init=1 {
		globalvar beat_beat_scr,beat_hit_scr,beat_miss_scr;
		beat_beat_scr=get_code(path_src+"beat/scr/beat.gml")
		beat_hit_scr =get_code(path_src+"beat/scr/hit.gml" )
		beat_miss_scr=get_code(path_src+"beat/scr/miss.gml")
		object_event_add(paddle,ev_create,0,get_code(path_src+"beat/paddle/create.gml",0))
		object_event_add(paddle,ev_step,0,get_code(path_src+"beat/paddle/step.gml",0))
		object_event_add(paddle,ev_draw,0,get_code(path_src+"beat/paddle/draw.gml",0))
		object_event_add(beat_beat_base,ev_create,0,get_code(path_src+"beat/beat/create.gml",0))
		object_event_add(beat_beat_base,ev_destroy,0,get_code(path_src+"beat/beat/destroy.gml",0))
		object_event_add(beat_beat_base,ev_step,0,get_code(path_src+"beat/beat/step.gml",0))
		object_event_add(beat_beat_base,ev_draw,0,get_code(path_src+"beat/beat/draw.gml",0))
		// should use text func replacement here
		// now thinking about it
		object_event_add(beat_particle_combo,ev_create,0,get_code(path_src+"beat/particle/combo/create.gml",0))
		object_event_add(beat_particle_combo,ev_step,0,get_code(path_src+"beat/particle/combo/step.gml",0))
		object_event_add(beat_particle_combo,ev_draw,0,get_code(path_src+"beat/particle/combo/draw.gml",0))
		object_event_add(beat_particle_miss,ev_create,0,get_code(path_src+"beat/particle/miss/create.gml",0))
		object_event_add(beat_particle_miss,ev_step,0,get_code(path_src+"beat/particle/miss/step.gml",0))
		object_event_add(beat_particle_miss,ev_draw,0,get_code(path_src+"beat/particle/miss/draw.gml",0))
		object_event_add(beat_particle_danger,ev_create,0,get_code(path_src+"beat/particle/danger/create.gml",0))
		object_event_add(beat_particle_danger,ev_step,0,get_code(path_src+"beat/particle/danger/step.gml",0))
		object_event_add(beat_particle_danger,ev_draw,0,get_code(path_src+"beat/particle/danger/draw.gml",0))
		object_event_add(beat_particle_great,ev_create,0,get_code(path_src+"beat/particle/great/create.gml",0))
		object_event_add(beat_particle_great,ev_step,0,get_code(path_src+"beat/particle/great/step.gml",0))
		object_event_add(beat_particle_great,ev_draw,0,get_code(path_src+"beat/particle/great/draw.gml",0))
		object_event_add(beat_particle_mega_hit,ev_create,0,get_code(path_src+"beat/particle/mega/hit/create.gml",0))
		object_event_add(beat_particle_mega_hit,ev_step,0,get_code(path_src+"beat/particle/mega/hit/step.gml",0))
		object_event_add(beat_particle_mega_hit,ev_draw,0,get_code(path_src+"beat/particle/mega/hit/draw.gml",0))
		object_event_add(beat_particle_mega_bounce,ev_create,0,get_code(path_src+"beat/particle/mega/bounce/create.gml",0))
		object_event_add(beat_particle_mega_bounce,ev_step,0,get_code(path_src+"beat/particle/mega/bounce/step.gml",0))
		object_event_add(beat_particle_mega_bounce,ev_draw,0,get_code(path_src+"beat/particle/mega/bounce/draw.gml",0))
		object_event_add(beat_challenge_count,ev_create,0,get_code(path_src+"beat/particle/challenge/count/create.gml",0))
		object_event_add(beat_challenge_count,ev_step,0,get_code(path_src+"beat/particle/challenge/count/step.gml",0))
		object_event_add(beat_challenge_count,ev_draw,0,get_code(path_src+"beat/particle/challenge/count/draw.gml",0))
		object_event_add(beat_challenge_finish,ev_create,0,get_code(path_src+"beat/particle/challenge/finish/create.gml",0))
		object_event_add(beat_challenge_finish,ev_step,0,get_code(path_src+"beat/particle/challenge/finish/step.gml",0))
		object_event_add(beat_challenge_finish,ev_draw,0,get_code(path_src+"beat/particle/challenge/finish/draw.gml",0))
		sprite_replace(glados,path_gfx+"glados.png",2,0,0,13,33) init = 0 }
        room_goto(beat)
		break
	case 1:
		if init=1 {
		globalvar core_beat_scr,core_hit_scr,core_miss_scr,core_beam_scr;
		core_beat_scr=get_code(path_src+"core/scr/beat.gml")
		core_hit_scr =get_code(path_src+"core/scr/hit.gml")
		core_miss_scr=get_code(path_src+"core/scr/miss.gml")
		core_beam_scr=get_code(path_src+"core/scr/beam.gml")
		//object_event_add(plus,ev_create,0,get_code(path_src+"core/plus/create.gml"))
		object_event_add(plus,ev_step,0,get_code(path_src+"core/plus/step.gml",0))
		object_event_add(plus,ev_draw,0,get_code(path_src+"core/plus/draw.gml",0))
		sprite_replace(rainbow,path_gfx+"rainbow.png",2,0,0,13,33) init = 0 }
        room_goto(core)
		break
	case 2:
		break
	case 3:
		break
	case 4:
		break
	case 5:
		break
	default:
		break
}