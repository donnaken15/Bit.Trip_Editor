// READONLY
// why isnt this working as a file

bpm=60
instance_create(0,0,b_a_c_k_d_r_o_p)
mega_colors[1]=make_color_rgb(198,67,153)
mega_colors[2]=make_color_rgb(230,120,162)
mega_colors[3]=make_color_rgb(0,158,145)
mega_colors[4]=make_color_rgb(126,130,255)
mega_colors[5]=make_color_rgb(251,205,0)
mega_colors[6]=make_color_rgb(184,252,253)
mega_colors[7]=make_color_rgb(255,164,0)
mega_colors[8]=make_color_rgb(252,245,75)
mega_colors[9]=make_color_rgb(50,154,167)
current_mega_color[1]=mega_colors[1]
current_mega_color[2]=mega_colors[2]
current_mega_color[3]=mega_colors[3]
current_mega_color[4]=mega_colors[4]
current_mega_color[5]=mega_colors[5]
current_mega_color[6]=mega_colors[6]
current_mega_color[7]=mega_colors[7]
current_mega_color[8]=mega_colors[8]
current_mega_color[9]=mega_colors[9]
{
	i = 0;
	if !designer_mode {
	if loadonce < 2 {
	file_data = f_text_open(file,f_mode_read)
	timeline_clear(level)
	for (j = 0; j < string_length(file); j += 1) {
		if string_char_at(file,j) = "\" || string_char_at(file,j) = "/"
			k = j
	}
	level_directory = string_copy(file,0,k)
	while !f_text_eof(file_data)
	{
		f_text_readline(file_data)
		codeline = f_text_read_string(file_data)
		if ini_read_real("General","Secure",1) {
			string_replace_all(codeline,"f_deletefile","donothing")
			string_replace_all(codeline,"file_delete","donothing")
			string_replace_all(codeline,"execute_program","donothing")
			string_replace_all(codeline,"execute_shell","donothing")
			string_replace_all(codeline,"external_call","donothing")
			string_replace_all(codeline,'"copy"',"echo")
			string_replace_all(codeline,'"del"',"echo")
			string_replace_all(codeline,'"rm"',"echo")
			string_replace_all(codeline,'"move"',"echo")
			string_replace_all(codeline,'"mv"',"echo")
			string_replace_all(codeline,'"reg"',"echo")
			string_replace_all(codeline,"'copy'","echo")
			string_replace_all(codeline,"'del'","echo")
			string_replace_all(codeline,"'rm'","echo")
			string_replace_all(codeline,"'move'","echo")
			string_replace_all(codeline,"'mv'","echo")
			string_replace_all(codeline,"'reg'","echo")
			string_replace_all(codeline,"'Secure'","dummy")
			string_replace_all(codeline,'"Secure"',"dummy")
			string_replace_all(string_lower(codeline),"C:\Windows\system32","C:\safefolder\")
			string_replace_all(string_lower(codeline),"C:\Windows","C:\safefolder\")
			string_replace_all(string_lower(codeline),"C:/Windows/system32","C:\safefolder\")
			string_replace_all(string_lower(codeline),"C:/Windows","C:\safefolder\")
			string_replace_all(string_lower(codeline),"system32","..\..\..\..\..\safefolder")
			string_replace_all(string_lower(codeline),"SysWOW64","..\..\..\..\..\safefolder")
			string_replace_all(codeline,"file_rename","donothing")
			string_replace_all(codeline,"f_renamefile","donothing")
			string_replace_all(string_lower(codeline),"C:/Users/","C:/safefolder")
			string_replace_all(string_lower(codeline),"C:\Users\","C:/safefolder")
		}
		timeline_moment_add(level,i,codeline)
		i += 1;
	}
}
if loadonce = 1 loadonce = 2
f_text_close(file_data) } }
