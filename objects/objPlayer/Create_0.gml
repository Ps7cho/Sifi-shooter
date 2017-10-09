/// @description

x_frame = 0;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spritebody = sprMale1;
spriteFeet = male_Metal_Boots;
spriteLegs = male_white_pants;
spriteShirt = male_white_shirt;
spriteHair = sprHairMessyBrown;
spriteWeapon = sprSpear;

// atack info
shootRange = 300;
playerSpeed = 10;
 
xMovementPosition = noone; // x position to move to on mouse click
yMovementPosition = noone; // y position to move to on mouse click
attackingTarget = noone; // instanceId of enemy to attack
playerState = playerStates.idle
playerIdleCounter = 0;