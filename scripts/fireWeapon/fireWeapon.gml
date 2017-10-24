///fireWeapon(Attacker, Weapon, Target)
/// @param Attacker
/// @param Weapon
/// @param Target
var attacker = argument0;
var weapon = argument1;
var target = argument2;

// Reload weapon
var weaponClipRounds = ds_map_find_value(weapon, global.WEAPON_CLIP_ROUNDS_KEY);

if weaponClipRounds == 0 {
	ds_map_set(weapon, global.WEAPON_CAN_FIRE_KEY, false);
	attacker.alarm[2] = ds_map_find_value(weapon, global.WEAPON_RELOAD_SPEED_KEY);
	audio_play_sound(ds_map_find_value(weapon, global.WEAPON_RELOAD_SOUND_KEY), 10, false);
}



if weaponClipRounds > 0 {
	if (chance(ds_map_find_value(weapon, global.WEAPON_ACCURACY_KEY))) {
		//Hit target
		var weaponDamage = ds_map_find_value(weapon, global.WEAPON_DAMAGE_KEY);
		var damageDealt = weaponDamage - (weaponDamage * (target.armorValue / 1000));
		
		target.Health -= damageDealt;
		
		//weapon.alarm[2] = weapon.weaponhitDelay;
		var damageObject = instance_create_layer(target.x - 20, target.y - 75, "Instances", objFloatText);
		damageObject.floatText = damageDealt;
	} else {
		//Miss target
		var missObject = instance_create_layer(target.x - 20, target.y - 75, "Instances", objFloatText);
		missObject.floatText = "Miss"
	}
	
	weaponClipRounds --;
	ds_map_set(weapon, global.WEAPON_CAN_FIRE_KEY, false);
	ds_map_set(weapon, global.WEAPON_CLIP_ROUNDS_KEY, weaponClipRounds);
	
	audio_play_sound(ds_map_find_value(weapon, global.WEAPON_SHOOT_SOUND_KEY), 10, false);

	if instance_exists(attacker) {
		attacker.alarm[3] = ds_map_find_value(weapon, global.WEAPON_FIRE_RATE_KEY);
	}
}

