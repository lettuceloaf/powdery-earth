//base log
ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-1,6)
//log on top of base
ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-2,6)

//continue?
if 2=2 then {
switch(choose(0,1,2)) {
    case 0: 
    break;
    
    case 1:  
            ds_grid_set(mgrid,i-1,(ds_grid_height(mgrid)-p)-3,6)

            ds_grid_set(mgrid,i-choose(2,0),(ds_grid_height(mgrid)-p)-3,5)

        switch(choose(0,1,2,3)) {
        case 0: 
        break;
    
        case 1: 
                ds_grid_set(mgrid,i-2,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i-3,(ds_grid_height(mgrid)-p)-4,5)

            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1: 
                    ds_grid_set(mgrid,i-2,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-3,(ds_grid_height(mgrid)-p)-5,5)
            break;
    
            case 2: 
                    ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(1,-1),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3: 
                    ds_grid_set(mgrid,i-1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
    
        case 2:
                ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i-choose(-1,1),(ds_grid_height(mgrid)-p)-4,5)
            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1:  
                    ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(-1,1),(ds_grid_height(mgrid)-p)-5,5)
            break;
    
            case 2: 
                    ds_grid_set(mgrid,i-2,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(3,1),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3:
                    ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
        
        case 3:
                ds_grid_set(mgrid,i-1,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i-choose(2,0),(ds_grid_height(mgrid)-p)-4,5)
            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1:
                    ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(1,-1),(ds_grid_height(mgrid)-p)-5,5) 
            break;
    
            case 2: 
                    ds_grid_set(mgrid,i+2,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(1,3),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3:
                    ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
        }
    break;
    
    case 2:
            ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-3,6)
            ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-3,5)
        switch(choose(0,1,2,3)) {
        case 0: 
        break;
    
        case 1:
                ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i+choose(1,-1),(ds_grid_height(mgrid)-p)-4,5)
            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1:
                    ds_grid_set(mgrid,i-1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
    
            case 2:
                    ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i-choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3:
                    ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(1,-1),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
    
        case 2:
                ds_grid_set(mgrid,i+2,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i+choose(1,3),(ds_grid_height(mgrid)-p)-4,5)
            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1:
                    ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
    
            case 2:
                    ds_grid_set(mgrid,i+3,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(2,4),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3:
                    ds_grid_set(mgrid,i+2,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(3,1),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
        
        case 3:
                ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-4,6)
                ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-4,5)
            switch(choose(0,1,2,3)) {
            case 0: 
            break;
    
            case 1:
                    ds_grid_set(mgrid,i,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(1,-1),(ds_grid_height(mgrid)-p)-5,5)
            break;
    
            case 2: 
                    ds_grid_set(mgrid,i+2,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(3,1),(ds_grid_height(mgrid)-p)-5,5)
            break;
        
            case 3:
                    ds_grid_set(mgrid,i+1,(ds_grid_height(mgrid)-p)-5,6)
                    ds_grid_set(mgrid,i+choose(2,0),(ds_grid_height(mgrid)-p)-5,5)
            break;
            }
        break;
        }
    break;
    }
}
