if !realtimesrc
return file_text_read_all(argument[0])
else
switch argument_count
{
	case 1:
	case 2:
		return argument[0]
		break
	case 3:
		return 'execute_file("'+argument[0]+'")'
		break
}
