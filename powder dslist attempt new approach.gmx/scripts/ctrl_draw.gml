if room = rm_main
{
view_wport[0] = floor(browser_width)
view_hport[0] = floor(browser_width/2)
}

if draw_mode = 2 && selected_x > 0 && selected_y > 0 then
{
if sign(floor(window_views_mouse_get_x())-selected_x) =-1  || sign(floor(window_views_mouse_get_y())-selected_y) = -1 {draw_set_color(c_red)}else{draw_set_color(c_white)}
draw_rectangle(selected_x,selected_y,floor(window_views_mouse_get_x()),floor(window_views_mouse_get_y()),1)
draw_set_colour(c_white)
}


if !mouse_check_button(mb_left)
{
draw_set_color(c_white)
switch(draw_mode)
{
case 0: window_set_cursor(cr_none) draw_circle(floor(window_views_mouse_get_x()),floor(window_views_mouse_get_y()),radius,1) break;
case 1: window_set_cursor(cr_none) draw_rectangle(floor(window_views_mouse_get_x())-radius,floor(window_views_mouse_get_y())-radius,floor(window_views_mouse_get_x())+radius,floor(window_views_mouse_get_y())+radius,1)
break;
case 2: window_set_cursor(cr_cross) if mouse_check_button(mb_right) {window_set_cursor(cr_none) draw_circle(floor(window_views_mouse_get_x()),floor(window_views_mouse_get_y()),radius,1)} break;
}
}

if place_meeting(window_views_mouse_get_x(),window_views_mouse_get_y(),par_button)
{
window_set_cursor(cr_handpoint)
}


//view_hview[0] = ds_grid_height(mgrid)
//view_wview[0] = ds_grid_width(mgrid)
world_draw_t(mgrid,0,0)
room_caption = "fps: "+string(fps)
