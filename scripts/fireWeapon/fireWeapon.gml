///fireWeapon(Weapon,Targetobject)
/// @param Weapon
/// @param Targetobject
var weapon = argument0;
var target = argument1;

if weapon.weaponRounds == 0 { //reload
		weapon.weaponCanFire = false;
		weapon.alarm[1] = weapon.weaponReloadSpeed;
		audio_play_sound(weapon.weaponReloadSound, 10, false);
	}

if weapon.weaponRounds > 0 {
	if (chance(weapon.weaponAccuracy)){//hit target
		target.Health -= weapon.weaponDamage;
		weapon.alarm[2] = weapon.weaponhitDelay;
		draw_set_colour(c_red);
		draw_text(60,60,string(weapon.weaponDamage));
	}else{
		//miss target
		instance_create_layer(target.x-20,target.y-75,"Instances", objMiss);
				
	}
	weapon.weaponCanFire = false;
	weapon.weaponRounds --;	
	audio_play_sound(weapon.weaponShootSound, 10, false);
	weapon.alarm[0] = weapon.weaponFireRate;
}

