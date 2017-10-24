/// @description
event_inherited();

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);


//Weapon Info
playerWeaponList = ds_list_create();
playerWeaponButtonList = ds_list_create();

ds_list_add(playerWeaponList, generateWeapon(primaryWeapons.rifle, WeaponTiers.uncommon));
ds_list_add(playerWeaponList, generateWeapon(primaryWeapons.pistol, WeaponTiers.common));

playerPrimaryWeapon = ds_list_find_value(playerWeaponList, 0);

shootRange = ds_map_find_value(playerPrimaryWeapon, global.WEAPON_RANGE_KEY);



//Movement/Targeting 
xMovementPosition = noone; // x position to move to on mouse click
yMovementPosition = noone; // y position to move to on mouse click
attackingTarget = noone; // instanceId of enemy to attack

//Player States
playerState = playerStates.idle
playerIdleCounter = 0;

// Gui buttons
alarm[1] = 1;



