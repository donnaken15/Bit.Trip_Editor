file = get_open_filename("Any Level|*.btb;*.btc;*.btv;*.btr;*.btf;*.btz|Beat Level|*.btb|Core Level|*.btc|Void Level|*.btv|Runner Level|*.btr|Fate Level|*.btf|Flux Level|*.btz|All files|*.*",path_root)
if file != ""
{
    /*if os_type = os windows {
      file_data = f_readfromfile(file)
      file_data = f_gettext()
    }
    else*/
    file_data = file_text_read_all(file)
    if string_pos(".btb",file) != 0
		setup_game(0)
    else if string_pos(".btc",file) != 0
		setup_game(1)
    else if string_pos(".btv",file) != 0
		setup_game(2)
    else if string_pos(".btr",file) != 0
		setup_game(3)
    else if string_pos(".btf",file) != 0
		setup_game(4)
    else if string_pos(".btx",file) != 0
		setup_game(5)
    else
    {
        execute_file(file)
    }
}
else
{
    return false;
}
return true;
