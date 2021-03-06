/// @description 

// Add Weapon Buttons to list
var weaponButtonListSize = ds_list_size(playerWeaponList);
var startXButtonPosition = (window_get_width() / 2) - (64 * weaponButtonListSize) - (20 * (weaponButtonListSize - 1));
for (var i = 0; i < weaponButtonListSize; i++) {
    var button = instance_create_layer((startXButtonPosition + (128 + 40) * i), window_get_height() -  100, "Instances", objButtons);
	var weaponMap = ds_list_find_value(playerWeaponList, i)
    button.buttonText = ds_map_find_value(weaponMap, global.WEAPON_TITLE_KEY);
	button.playerReference = self;
	button.playerWeaponIndex = i;
}