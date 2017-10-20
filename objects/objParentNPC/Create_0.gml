/// @description
event_inherited();

walkSpeed = 400;
dir = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);



alarm[1] = 1;

primaryWeapon = instance_create_layer(x,y,"Instances",objPistol);
shootRange = primaryWeapon.weaponRange;
isTargeted = false;
attackingTarget = noone;

armorValue = 0;