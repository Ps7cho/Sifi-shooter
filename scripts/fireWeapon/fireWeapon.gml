///fireWeapon(Weapon,Targetobject)
/// @param Weapon
/// @param Targetobject
var weapon = argument0;
var target = argument1;

if weapon.weaponRounds == 0 {
		weapon.weaponCanFire = false;
		weapon.alarm[1] = weapon.weaponReloadSpeed;
		audio_play_sound(weapon.weaponReloadSound, 10, false);
	}

if weapon.weaponRounds > 0 {

	target.npcHealth -= weapon.weaponDamage;
	weapon.weaponCanFire = false;
	weapon.weaponRounds --;	
	audio_play_sound(weapon.weaponShootSound, 10, false);
	weapon.alarm[0] = weapon.weaponFireRate;
}

