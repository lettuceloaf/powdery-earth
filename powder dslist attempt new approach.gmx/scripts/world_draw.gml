{
    var grid,sx,sy,w,h,M,m,j,i,value,f;
    grid = argument0;
    sx = argument1;
    sy = argument2;
 
    w = ds_grid_width(grid);
    h = ds_grid_height(grid);
 
    M = ds_grid_get_max(grid,0,0,w-1,h-1);
    m = ds_grid_get_min(grid,0,0,w-1,h-1);
   if (M=m) f = 0 else f = 1/(M-m);
 
    for (i=0; i<w; i+=1)
    {
        for (j=0; j<h; j+=1)
        {
            //value = f*(ds_grid_get(grid,i,j)-m);
            value = ds_grid_get(grid,i,j)
            if value > 0 
            {
            draw_set_color(get_particle_colour(value))
            draw_rectangle((sx+i),(sy+j),(sx+i)+(BLOCK_WIDTH),(sy+j)+(BLOCK_WIDTH),0)
            draw_set_color(c_white)
            }
        }
    }
 
    return 0;
}
