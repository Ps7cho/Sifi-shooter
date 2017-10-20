/// @description 
if mouse_check_button_pressed(mb_left){
    
	if point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), x, y, x + sprite_width, y + sprite_height) 
	&& playerReference != noone 
	&& playerWeaponIndex != -1 {
		if ds_list_size(playerReference.playerWeaponList) > playerWeaponIndex {
			playerReference.playerPrimaryWeapon = ds_list_find_value(playerReference.playerWeaponList, playerWeaponIndex);	
		}
	}
}


draw_self();
draw_set_color(c_aqua);
draw_text(x + 10, y + 10, buttonText);
draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_aqua,c_black,c_teal,c_black,true);