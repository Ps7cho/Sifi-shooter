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
//ds_list_add(playerWeaponList, instance_create_layer(x,y,"Instances",objPistol));

playerPrimaryWeapon = ds_list_find_value(playerWeaponList, 0);

shootRange = playerPrimaryWeapon.weaponRange;

//Armor Info
armorTeir = 0;
armorValue = 0;


//Movement/Targeting 
xMovementPosition = noone; // x position to move to on mouse click
yMovementPosition = noone; // y position to move to on mouse click
attackingTarget = noone; // instanceId of enemy to attack

//Player States
playerState = playerStates.idle
playerIdleCounter = 0;


var displayHeight = window_get_height();
var displayWidth = window_get_width();

var numberOfWeaponButtons = ds_list_size(playerWeaponList);
var startXButtonPosition = (displayWidth / 2) - (64 * numberOfWeaponButtons);
for (var i = 0; i < numberOfWeaponButtons; i++) {
    var button = instance_create_layer((startXButtonPosition + 128 * i), displayHeight -  100, "Instances", objButtons);
    button.buttonPlayerReference = self;
    button.buttonText = ds_list_find_value(playerWeaponList, i).weaponTitle;
    button.buttonWeaponIndex = i;
    // Debug
    //draw_text((startXButtonPosition + 128 * i), displayHeight -  100, "Weapon:" +string(ds_list_find_value(playerWeaponList, i).weaponTitle));
}
