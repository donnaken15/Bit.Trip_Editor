if error_last!=""{alpha=5
text=error_last
if enable_error_logs{
f_text_write_string(errlog,error_last)
f_text_writeline(errlog,true)
f_text_write_string(errlog,caster_error_message())
f_text_writeline(errlog,true)}
error_last=""}

