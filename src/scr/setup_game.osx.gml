switch (argument0)
{
	case 0:
		if init=1 {
		globalvar beat_beat_scr,beat_hit_scr,beat_miss_scr;
		beat_beat_scr=file_text_read_all(path_src+"beat/scr/beat.gml")
		beat_hit_scr =file_text_read_all(path_src+"beat/scr/hit.gml" )
		beat_miss_scr=file_text_read_all(path_src+"beat/scr/miss.gml")
		object_event_add(paddle,ev_create,0,file_text_read_all(path_src+"beat/paddle/create.gml"))
		object_event_add(paddle,ev_step,0,file_text_read_all(path_src+"beat/paddle/step.gml"))
		object_event_add(paddle,ev_draw,0,file_text_read_all(path_src+"beat/paddle/draw.gml"))
		object_event_add(beat_beat_base,ev_create,0,file_text_read_all(path_src+"beat/beat/create.gml"))
		object_event_add(beat_beat_base,ev_destroy,0,file_text_read_all(path_src+"beat/beat/destroy.gml"))
		object_event_add(beat_beat_base,ev_step,0,file_text_read_all(path_src+"beat/beat/step.gml"))
		object_event_add(beat_beat_base,ev_draw,0,file_text_read_all(path_src+"beat/beat/draw.gml"))
		// should use text func replacement here
		// now thinking about it
		object_event_add(beat_particle_combo,ev_create,0,file_text_read_all(path_src+"beat/particle/combo/create.gml"))
		object_event_add(beat_particle_combo,ev_step,0,file_text_read_all(path_src+"beat/particle/combo/step.gml"))
		object_event_add(beat_particle_combo,ev_draw,0,file_text_read_all(path_src+"beat/particle/combo/draw.gml"))
		object_event_add(beat_particle_miss,ev_create,0,file_text_read_all(path_src+"beat/particle/miss/create.gml"))
		object_event_add(beat_particle_miss,ev_step,0,file_text_read_all(path_src+"beat/particle/miss/step.gml"))
		object_event_add(beat_particle_miss,ev_draw,0,file_text_read_all(path_src+"beat/particle/miss/draw.gml"))
		object_event_add(beat_particle_danger,ev_create,0,file_text_read_all(path_src+"beat/particle/danger/create.gml"))
		object_event_add(beat_particle_danger,ev_step,0,file_text_read_all(path_src+"beat/particle/danger/step.gml"))
		object_event_add(beat_particle_danger,ev_draw,0,file_text_read_all(path_src+"beat/particle/danger/draw.gml"))
		object_event_add(beat_particle_great,ev_create,0,file_text_read_all(path_src+"beat/particle/great/create.gml"))
		object_event_add(beat_particle_great,ev_step,0,file_text_read_all(path_src+"beat/particle/great/step.gml"))
		object_event_add(beat_particle_great,ev_draw,0,file_text_read_all(path_src+"beat/particle/great/draw.gml"))
		object_event_add(beat_particle_mega_hit,ev_create,0,file_text_read_all(path_src+"beat/particle/mega/hit/create.gml"))
		object_event_add(beat_particle_mega_hit,ev_step,0,file_text_read_all(path_src+"beat/particle/mega/hit/step.gml"))
		object_event_add(beat_particle_mega_hit,ev_draw,0,file_text_read_all(path_src+"beat/particle/mega/hit/draw.gml"))
		object_event_add(beat_particle_mega_bounce,ev_create,0,file_text_read_all(path_src+"beat/particle/mega/bounce/create.gml"))
		object_event_add(beat_particle_mega_bounce,ev_step,0,file_text_read_all(path_src+"beat/particle/mega/bounce/step.gml"))
		object_event_add(beat_particle_mega_bounce,ev_draw,0,file_text_read_all(path_src+"beat/particle/mega/bounce/draw.gml"))
		object_event_add(beat_challenge_count,ev_create,0,file_text_read_all(path_src+"beat/particle/challenge/count/create.gml"))
		object_event_add(beat_challenge_count,ev_step,0,file_text_read_all(path_src+"beat/particle/challenge/count/step.gml"))
		object_event_add(beat_challenge_count,ev_draw,0,file_text_read_all(path_src+"beat/particle/challenge/count/draw.gml"))
		object_event_add(beat_challenge_finish,ev_create,0,file_text_read_all(path_src+"beat/particle/challenge/finish/create.gml"))
		object_event_add(beat_challenge_finish,ev_step,0,file_text_read_all(path_src+"beat/particle/challenge/finish/step.gml"))
		object_event_add(beat_challenge_finish,ev_draw,0,file_text_read_all(path_src+"beat/particle/challenge/finish/draw.gml"))
		sprite_load(glados,path_gfx+"glados.png",2,13,33) init = 0 }
    room_goto(beat)
		break
}
