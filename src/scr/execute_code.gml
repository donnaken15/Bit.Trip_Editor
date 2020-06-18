// READONLY
//bad, there should be a better way for this
if !realtimesrc {
var _ret
switch argument_count
{
    case 0:
        show_error("Enter something.",false)
        break
    case 1:
        _ret = execute_string(argument0)
        break
    case 2:
        _ret = execute_string(argument0,
            argument[1])
        break
    case 3:
        _ret = execute_string(argument0,
            argument[1],argument[2])
        break
    case 4:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3])
        break
    case 5:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4])
        break
    case 6:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5])
        break
    case 7:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6])
        break
    case 8:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7])
        break
    case 9:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8])
        break
    case 10:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9])
        break
    case 11:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10])
        break
    case 12:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11])
        break
    case 13:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12])
        break
    case 14:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12],
            argument[13])
        break
    case 15:
        _ret = execute_string(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12],
            argument[13],argument[14])
        break
    default:
        show_error("Too many arguments. Blame YoYo ;(",false)
        break
}}else{
var _ret
switch argument_count
{
    case 0:
        show_error("Enter something.",false)
        break
    case 1:
        _ret = execute_file(argument0)
        break
    case 2:
        _ret = execute_file(argument0,
            argument[1])
        break
    case 3:
        _ret = execute_file(argument0,
            argument[1],argument[2])
        break
    case 4:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3])
        break
    case 5:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4])
        break
    case 6:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5])
        break
    case 7:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6])
        break
    case 8:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7])
        break
    case 9:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8])
        break
    case 10:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9])
        break
    case 11:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10])
        break
    case 12:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11])
        break
    case 13:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12])
        break
    case 14:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12],
            argument[13])
        break
    case 15:
        _ret = execute_file(argument0,
            argument[1],argument[2],
            argument[3],argument[4],
            argument[5],argument[6],
            argument[7],argument[8],
            argument[9],argument[10],
            argument[11],argument[12],
            argument[13],argument[14])
        break
    default:
        show_error("Too many arguments. Blame YoYo ;(",false)
        break
}}
return _ret
