/// @description
event_inherited();

movementSpeed = 400;
dir = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);



alarm[1] = 1;

primaryWeapon = generateWeapon(primaryWeapons.pistol, WeaponTiers.common);
shootRange = ds_map_find_value(primaryWeapon, global.WEAPON_RANGE_KEY);
isTargeted = false;
attackingTarget = noone;

armorValue = 0;