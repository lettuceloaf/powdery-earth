//
// generate_world(top,middle,bottom,x1,y1,x2,y2)
//
//
    pmax = argument6-argument4-4

    for(i=argument3;i<argument5;i+=1){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    
    if irandom(35) = 1 then {
        if pmin <= pmax && pmax < argument6 {
    
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
    
    //Generates a standard forest


        ds_grid_set(mgrid,i,argument6-p,argument0)

            // MIDDLE // 

    for(m=argument6-(p-1);m<argument6;m+=1)
    { // THIS WILL START GENERATE THE BOTTOM LAYER-Dirt//

        if m<argument6-(p-4){

            ds_grid_set(mgrid,i,m,argument1)

        }

    }

            // BOTTOM //obj

    for(b=argument6-(p-4);b<argument6+1;b+=1){ // THIS WILL START GENERATE THE BOTTOM LAYER -Stone//

    

        ds_grid_set(mgrid,i,b,argument2)



    }

           // BOTTOM //obj

   

    p+=v //add velocity to position

    v+=a //add acceleration to velocity

    a=choose(irandom(roughness),-irandom(roughness)) //Terrain randomization (use wider values for rougher terrain, and vice versa)

    

        // TERRAIN SHAPE //

    if p>pmax{p=pmax v=0 a=-abs(a)}

    if p<pmin{p=pmin v=0 a=abs(a)}

    

    }
