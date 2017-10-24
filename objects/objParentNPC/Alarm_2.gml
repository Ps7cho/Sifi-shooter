/// @description Reload Weapon
var weaponRounds = ds_map_find_value(primaryWeapon, global.WEAPON_ROUNDS_KEY);
var weaponClipSize = ds_map_find_value(primaryWeapon, global.WEAPON_CLIP_SIZE_KEY);

if weaponRounds >= weaponClipSize {
	ds_map_set(primaryWeapon, global.WEAPON_ROUNDS_KEY, weaponRounds - weaponClipSize);
	ds_map_set(primaryWeapon, global.WEAPON_CLIP_ROUNDS_KEY, weaponClipSize);
	ds_map_set(primaryWeapon, global.WEAPON_CAN_FIRE_KEY, true);
} else if weaponRounds > 0 {
	ds_map_set(primaryWeapon, global.WEAPON_ROUNDS_KEY, 0);
	ds_map_set(primaryWeapon, global.WEAPON_CLIP_ROUNDS_KEY, weaponRounds);
	ds_map_set(primaryWeapon, global.WEAPON_CAN_FIRE_KEY, true);
} else {
	// Weapon has no rounds left
}
