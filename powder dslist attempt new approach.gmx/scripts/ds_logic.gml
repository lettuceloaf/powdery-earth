var ix,iy

if fps < 5 
{
skipframes += 1
}

if skipframes > 0 && fps > 2 {skipframes -= 1}

if skipframes <= 0 {
for(ix=0;ix<ds_grid_width(mgrid);ix+=1)
{

for(iy=0;iy<ds_grid_height(mgrid)-1;iy+=1)
{
currentpart = ds_grid_get(mgrid,ix,iy)

    if string_pos(string(currentpart),flam_part) != 0
    {
    if ds_grid_value_exists(mgrid,ix-1,iy-1,ix+1,iy+1,8)
    {
    if irandom(85)
        {
        ds_grid_set(mgrid,ix,iy,8)
        iy+=1
        }
    }
    
    }

    //Gravity and Flow
    if string_pos(string(currentpart),grav_part) != 0
    {
    
        if ds_grid_get(mgrid,ix,iy+1) = 0
        {
        ds_grid_set(mgrid,ix,iy+1,currentpart)
        ds_grid_set(mgrid,ix,iy,0)
        iy +=1
        }
        else if string_pos(string(currentpart),flow_part) != 0
            {
            if ds_grid_get(mgrid,ix+1,iy+1) = 0 || ds_grid_get(mgrid,ix-1,iy+1) = 0
                {
                if ds_grid_get(mgrid,ix+1,iy) = 0
                {
                ds_grid_set(mgrid,ix,iy,0)
                ds_grid_set(mgrid,ix+1,iy,currentpart)
                iy+=1
                }
                else if ds_grid_get(mgrid,ix-1,iy) = 0
                {
                ds_grid_set(mgrid,ix,iy,0)
                ds_grid_set(mgrid,ix-1,iy,currentpart)
                iy+=1
                }
                }
            }
    }
    else
    {
    
    }
    
    if string_pos(string(currentpart),float_part) != 0
    {
    if ds_grid_get(mgrid,ix,iy-1) = 0
        {
        ds_grid_set(mgrid,ix,iy-1,currentpart)
        ds_grid_set(mgrid,ix,iy,0)
        iy +=1
        }
        else if string_pos(string(currentpart),flow_part) != 0
            {
            if ds_grid_get(mgrid,ix+1,iy-1) = 0 || ds_grid_get(mgrid,ix-1,iy-1) = 0
                {
                if ds_grid_get(mgrid,ix+1,iy) = 0
                {
                ds_grid_set(mgrid,ix,iy,0)
                ds_grid_set(mgrid,ix+1,iy,currentpart)
                iy+=1
                }
                else if ds_grid_get(mgrid,ix-1,iy) = 0
                {
                ds_grid_set(mgrid,ix,iy,0)
                ds_grid_set(mgrid,ix-1,iy,currentpart)
                iy+=1
                }
                }
            }
    }
/*
        //game of life
        
        if ds_grid_get(mgrid,ix,iy) = 0
        {
         if ds_grid_value_exists(mgrid,x-1,y-1,x+1,y+1,901)
         {
            if ds_grid_get_neighbours(901) = 3 then
            {
            ds_grid_set(mgrid,ix,iy,901)
            }
        }
        }
        
        if ds_grid_get(mgrid,ix,iy) = 901
        {

        if ds_grid_get_neighbours(901) >= 2 && ds_grid_get_neighbours(901) < 4
        {
        
        }
        else
        {
        ds_grid_set(mgrid,ix,iy,0)
        }
        iy+=1
        }
        
        */

}
}
}
