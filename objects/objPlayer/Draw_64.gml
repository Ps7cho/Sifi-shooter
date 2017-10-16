/// @description draw to gui
draw_set_color(c_red);
draw_text(35, 50, "Weapon:" +string(playerPrimaryWeapon.weaponTitle));
draw_text(35, 65, "Ammo:" +string(playerPrimaryWeapon.weaponRounds) +" / " + string(playerPrimaryWeapon.weaponClipSize));
draw_text(35, 80,"Armor Tier "+string(armorTier));
//draw_sprite_stretched(global.weaponArray[global.weapon,1],0, 35, 75,100,50);


