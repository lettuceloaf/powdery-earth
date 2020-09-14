var ix,iy
for(ix=0;ix<ds_grid_width(mgrid);ix+=1)
{

for(iy=0;iy<ds_grid_height(mgrid);iy+=1)
{

if grav = 1
    {
    if ds_grid_get(mgrid,ix,iy) = part_id && ds_grid_get(mgrid,ix,iy+1) = 0
        {
        ds_grid_set(mgrid,ix,iy,0)
        ds_grid_set(mgrid,ix,iy+grav_dir,part_id)
        iy+=grav_dir
        }
        else if flow = 1 
        {
        if ds_grid_get(mgrid,ix+1,iy+grav_dir) = 0 || ds_grid_get(mgrid,ix-1,iy+grav_dir) = 0
        {
        if ds_grid_get(mgrid,ix+1,iy) = 0 then 
            {
            ds_grid_set(mgrid,ix,iy,0)
            ds_grid_set(mgrid,ix+1,iy,part_id)
            iy+=1
            }
            else if ds_grid_get(mgrid,ix-1,iy) = 0 then 
            {
            ds_grid_set(mgrid,ix,iy,0)
            ds_grid_set(mgrid,ix-1,iy,part_id)
            iy+=1
            }
        }
        }
    
    }

if MustBeNear != -1 then
{
if !ds_grid_value_exists(mgrid,ix-1,iy-1,ix+1,iy+1,MustBeNear) then
    {
    ds_grid_set(mgrid,ix,iy,0)
    }
}

if DestroyIfNear != -1 then
{
if ds_grid_value_exists(mgrid,ix-1,iy-1,ix+1,iy+1,DestroyIfNear) then
    {
    ds_grid_set(mgrid,ix,iy,0)
    }
}

if flammable = 1 then
{
if ds_grid_value_exists(mgrid,ix-1,iy-1,ix+1,iy+1,8) then
    {
    ds_grid_set(mgrid,ix,iy,0)
    }
}
}
}
