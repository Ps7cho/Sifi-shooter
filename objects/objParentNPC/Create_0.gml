/// @description
walkSpeed = 400;
dir = 0;
npcMaxHealth = 500;
Health = npcMaxHealth;

x_frame = 0;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spritebody = -1;
spriteFeet = -1;
spriteLegs = -1;
spriteShirt = -1;
spriteHair = -1;

moveX = 0;
moveY = 0;

alarm[1] = 1;

primaryWeapon = instance_create_layer(x,y,"Instances",objPistol);
shootRange = primaryWeapon.weaponRange;
isTargeted = false;
attackingTarget = noone;

armorValue = 0;