        var neighbours;
        if ds_grid_get(mgrid,ix+1,iy) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix+1,iy+1) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix,iy+1) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix-1,iy+1) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix-1,iy) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix-1,iy-1) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix,iy-1) = argument0
            {
            neighbours += 1
            }
        if ds_grid_get(mgrid,ix+1,iy-1) = argument0
            {
            neighbours += 1
            }
return neighbours;
