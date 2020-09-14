var str;
str = argument0
str = string_replace_all(str,string_repeat("0",2048),"Z")
str = string_replace_all(str,string_repeat("0",1024),"Y")
str = string_replace_all(str,string_repeat("0",512),"X")
str = string_replace_all(str,string_repeat("0",256),"W")
str = string_replace_all(str,string_repeat("0",128),"V")
str = string_replace_all(str,string_repeat("0",64),"U")
str = string_replace_all(str,string_repeat("0",32),"T")
str = string_replace_all(str,string_repeat("0",16),"S")
str = string_replace_all(str,string_repeat("0",8),"R")
str = string_replace_all(str,"0000","Q")
str = string_replace_all(str,"00","P")

//compress further
str = string_replace_all(str,"SRQ","O")
str = string_replace_all(str,"P84O","M")
str = string_replace_all(str,"C4O0","N")
str = string_replace_all(str,"MMM","L")
str = string_replace_all(str,"NNN","K")
str = string_replace_all(str,"N1N1","J")
str = string_replace_all(str,"F03FOP4OP04OP04O","I")
return str;

