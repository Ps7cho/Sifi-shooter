/// @description draw to gui
draw_set_color(c_red);
draw_text(35, 50, "Weapon:" +string(ds_map_find_value(playerPrimaryWeapon, global.WEAPON_TITLE_KEY)));
draw_text(35, 65, "Ammo:" +string(ds_map_find_value(playerPrimaryWeapon, global.WEAPON_CLIP_ROUNDS_KEY)) +" / " + string(ds_map_find_value(playerPrimaryWeapon, global.WEAPON_CLIP_SIZE_KEY)));
draw_text(35, 80,"Armor Tier "+string(armorTier));
//draw_sprite_stretched(global.weaponArray[global.weapon,1],0, 35, 75,100,50);


