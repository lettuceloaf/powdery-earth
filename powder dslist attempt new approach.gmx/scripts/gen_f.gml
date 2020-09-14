//Generates a standard forest


        ds_grid_set(mgrid,i,ds_grid_height(mgrid)-p,argument0)
        
//TREES
    if floor(random(30)) = 1 && place_free(i,ds_grid_height(mgrid)-p) {
    gen_tree()
    }

            // MIDDLE // 

    for(m=ds_grid_height(mgrid)-(p-1);m<ds_grid_height(mgrid);m+=1)
    { // THIS WILL START GENERATE THE BOTTOM LAYER-Dirt//

        if m<ds_grid_height(mgrid)-(p-4){

            ds_grid_set(mgrid,i,m,argument1)

        }

    }

            // BOTTOM //obj

    for(b=ds_grid_height(mgrid)-(p-4);b<ds_grid_height(mgrid)+1;b+=1){ // THIS WILL START GENERATE THE BOTTOM LAYER -Stone//

    

        ds_grid_set(mgrid,i,b,argument2)



    }

           // BOTTOM //obj

   

    p+=v //add velocity to position

    v+=a //add acceleration to velocity

    a=choose(irandom(roughness),-irandom(roughness)) //Terrain randomization (use wider values for rougher terrain, and vice versa)

    

        // TERRAIN SHAPE //

    if p>pmax{p=pmax v=0 a=-abs(a)}

    if p<pmin{p=pmin v=0 a=abs(a)}


