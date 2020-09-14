//
// generate_world(top,middle,bottom,x1,y1,x2,y2)
//
//
ds_grid_destroy(mgrid);

mgrid = ds_grid_create(room_width/BLOCK_WIDTH,room_height/BLOCK_WIDTH)
pmax = 12

    for(i=0;i<ds_grid_width(mgrid);i+=1){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    
    if irandom(35) = 1 then {
        if pmin <= pmax && pmax < ds_grid_height(mgrid) {
    
    pmax += irandom_range(-pmax_delta*2,pmax_delta)
    pmin += irandom_range(-pmin_delta*2,pmin_delta)
    
        }
        else
        {
        pmax = pmin+4
        }
    }
    if pmin < 8 then 
    {
    pmin += 2
    }
    
    if irandom(45) = 1 then 
    {
    roughness = choose(1,2,3,1,2,1,2,0,2,4)
    }
    
    gen_f(argument0,argument1,argument2);
    

    }
