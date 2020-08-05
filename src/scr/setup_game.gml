switch (argument0)
{
	case 0:
		globalvar beat_beat_scr,beat_hit_scr,beat_miss_scr;
		beat_beat_scr=get_code(path_src+"beat/scr/beat.gml")
		beat_hit_scr =get_code(path_src+"beat/scr/hit.gml" )
		beat_miss_scr=get_code(path_src+"beat/scr/miss.gml")
		object_event_add(paddle,ev_create,0,get_code(path_src+"beat/paddle/create.gml",0))
		object_event_add(paddle,ev_step,0,get_code(path_src+"beat/paddle/step.gml",0))
		object_event_add(paddle,ev_draw,0,get_code(path_src+"beat/paddle/draw.gml",0))
		if os_type = os_windows
			execute_string('sprite_replace(glados,path_gfx+"glados.png",2,0,0,13,33)')
		else
			sprite_replace(glados,path_gfx+"glados.png",2,0,0,0,0,13,33)
		//sprite_load(glados,path_gfx+"glados.png",2,13,33)
    room_goto(beat)
		break
	case 1:
		globalvar core_beat_scr,core_hit_scr,core_miss_scr,core_beam_scr;
		core_beat_scr=get_code(path_src+"core/scr/beat.gml")
		core_hit_scr =get_code(path_src+"core/scr/hit.gml")
		core_miss_scr=get_code(path_src+"core/scr/miss.gml")
		core_beam_scr=get_code(path_src+"core/scr/beam.gml")
		//object_event_add(plus,ev_create,0,get_code(path_src+"core/plus/create.gml"))
		object_event_add(plus,ev_step,0,get_code(path_src+"core/plus/step.gml",0))
		object_event_add(plus,ev_draw,0,get_code(path_src+"core/plus/draw.gml",0))
		if os_type = os_windows
			execute_string('sprite_replace(rainbow,path_gfx+"rainbow.png",2,0,0,13,33)')
		else
			sprite_replace(rainbow,path_gfx+"rainbow.png",2,0,0,0,0,13,33)
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
	case 6:
		globalvar beat_beat_scr,core_beat_scr;
		beat_beat_scr=get_code(path_src+"beat/scr/beat.gml",0)
		core_beat_scr=get_code(path_src+"core/scr/beat.gml",0)
		object_event_add(designer_ctrl,ev_draw,0,get_code(path_src+"designer/ctrl/draw.gml",0))
		object_event_add(leveleditor_beat,ev_draw,0,get_code(path_src+"designer/leveleditor/beat.gml",0))
		//object_event_add(designer_ctrl,ev_room_start,0,get_code(path_src+"designer/ctrl/room_start.gml"))
		//object_event_add(designer_ctrl,ev_room_end,0,get_code(path_src+"designer/ctrl/room_end.gml"))
		if os_type = os_windows
			execute_string('sprite_replace(form_icons,path_gfx+"form_icons.png",27,0,0,0,0)')
		else
			sprite_replace(form_icons,path_gfx+"form_icons.png",27,0,0,0,0,0,0)
		globalvar draw_window_scr,mouse_rectangle_scr,string_onedecimal_scr,show_menu_ext_scr,
		textbox_draw_scr,textbox_create_scr,designerprotection_scr,designer_beat_create_scr,
		get_scrollbarvalue_scr,scrollbar_create_scr,scrollbar_draw_scr;
		draw_window_scr = get_code(path_src+"designer/scr/draw_window.gml",0)
		mouse_rectangle_scr = get_code(path_src+"designer/scr/mouse_rectangle.gml",0)
		string_onedecimal_scr = get_code(path_src+"scr/string_onedecimal.gml",0)
		show_menu_ext_scr = get_code(path_src+"scr/show_menu_ext.gml",0)
		textbox_create_scr = get_code(path_src+"scr/textbox/create.gml",0)
		textbox_draw_scr = get_code(path_src+"scr/textbox/draw.gml",0)
		designerprotection_scr = get_code(path_src+"designer/scr/protection.gml",0)
		designer_beat_create_scr = get_code(path_src+"designer/scr/beat/create.gml",0)
		get_scrollbarvalue_scr = get_code(path_src+"designer/scr/scrollbar/get_value.gml",0)
		scrollbar_create_scr = get_code(path_src+"designer/scr/scrollbar/create.gml",0)
		scrollbar_draw_scr = get_code(path_src+"designer/scr/scrollbar/draw.gml",0)
		execute_file(path_src+"/designer/init.gml")
		room_goto(designer)
		break
	default:
		break
}
