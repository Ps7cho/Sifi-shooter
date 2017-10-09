///fireWeapon(Weapon,Targetobject)
/// @param Weapon
/// @param Targetobject
var weapon = argument0;
var target = argument1;

if weapon.weaponRounds > 0 {

	target.npcHealth -= weapon.weaponDamage;
	weapon.weaponCanFire = false;
	weapon.alarm[0] = weapon.weaponFireRate;
	weapon.weaponRounds --;	
}

if weapon.weaponRounds == 0 {
		weapon.weaponCanFire = false;
		weapon.alarm[1] = weapon.weaponReloadSpeed;		
	}