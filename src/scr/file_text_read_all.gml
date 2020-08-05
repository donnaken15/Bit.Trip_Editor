if os_type = os_windows {
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
}
else
{
  // maybe stick with this if it will work on both platforms
  // for some reason yoyo wants to be nice to me now
  if file_exists(argument0)
  {
    var f,s;
    f = file_text_open_read(argument0)
    s = ""
    while (!file_text_eof(f))
    {
      s += file_text_read_string(f)
      s += chr($D)
      file_text_readln(f)
    }
    file_text_close(f)
    return s
  }
  else
    show_error("File does not exist: "+argument0,false)
}
