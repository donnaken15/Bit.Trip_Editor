if file_exists(argument0)
{
    var f,s;
    f = f_text_open(argument0,f_mode_read)
    s = ""
    while (!f_text_eof(f))
    {
        f_text_readline(f)
        s += f_text_read_string(f)
        s += chr($D)
    }
    f_text_close(f)
    return s
}
else
    show_error("File does not exist: "+argument0,false)
