if file_exists("savedmap.txt"){

var file,load;
file = file_text_open_read("savemap.txt")
load = decompress(file_text_read_string(file))
ds_grid_read(mgrid,load)
file_text_close(file)
load = ""
}
