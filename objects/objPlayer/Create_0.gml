/// @description

x_frame = 0;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);


// atack info
playerSpeed = 600;
playerMaxHealth = 500;
Health =playerMaxHealth;

//Weapon Info
playerWeaponList = ds_list_create();
ds_list_add(playerWeaponList, instance_create_layer(x,y,"Instances",objRifle));
ds_list_add(playerWeaponList, instance_create_layer(x,y,"Instances",objPistol));

playerPrimaryWeapon = ds_list_find_value(playerWeaponList, 0);

shootRange = playerPrimaryWeapon.weaponRange;

//Armor Info



//Movement/Targeting 
xMovementPosition = noone; // x position to move to on mouse click
yMovementPosition = noone; // y position to move to on mouse click
attackingTarget = noone; // instanceId of enemy to attack

//Player States
playerState = playerStates.idle
playerIdleCounter = 0;
