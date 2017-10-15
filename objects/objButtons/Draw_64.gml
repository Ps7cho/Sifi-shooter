/// @description 
if mouse_check_button_pressed(mb_left){
    draw_text(x, y, "Clicked");
    if (buttonPlayerReference != noone && buttonWeaponIndex != -1) {
        buttonPlayerReference.playerPrimaryWeapon = ds_list_find_value(buttonPlayerReference.playerWeaponList, buttonWeaponIndex);
    }
}

draw_text(x + 10, y + 10, buttonText);
draw_self();