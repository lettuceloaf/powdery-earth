var file;
file = file_text_open_write("savemap.txt");
file_text_write_string(file,compress(ds_grid_write(mgrid)))
file_text_close(file)
