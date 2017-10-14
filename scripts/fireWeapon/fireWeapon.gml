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
	if (chance(weapon.weaponAccuracy)){
		target.Health -= weapon.weaponDamage;
		weapon.alarm[2] = weapon.weaponhitDelay;
	}else{
		with (target){
			instance_create_layer(x-20,y-75,"Instances", objMiss);
		}			
	}
	weapon.weaponCanFire = false;
	weapon.weaponRounds --;	
	audio_play_sound(weapon.weaponShootSound, 10, false);
	weapon.alarm[0] = weapon.weaponFireRate;
}

