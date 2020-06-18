//string_onedecimal(str)
var str;
str=argument0
if (string_count(".",str)=0) return str
while (str!="") {
    if (string_char_at(str,string_length(str)-1)=".") break
    str=string_delete(str,string_length(str)-1,1)
}
return str
