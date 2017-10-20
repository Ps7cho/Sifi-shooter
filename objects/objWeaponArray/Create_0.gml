/// @description Insert description here
var weaponsTotal = 2;
global.weapons = weaponsTotal;

/*
[i,0] = Name
[i,1] = sprite index
[i,2] = rate of fire
[i,3] = ammo index
[i,4] = magazine size
[i,5] = x offset
[i,6] = y offset

*/
// create array
var weaponValues = 7;
for (i = 0; i <= global.weapons; i++){
    for (j = 0; j < weaponValues; j++){
        global.weaponArray[i,j] = 0;
    }
}     

// [0] Pistol
global.weaponArray[0,0] = primaryWeapons.pistol; //weaponType
global.weaponArray[0,1] = 0.85; //weaponAccuracy
global.weaponArray[0,2] = 30; //weaponDamage
global.weaponArray[0,3] = 300;  //weaponRange
global.weaponArray[0,4] = 60; //weaponFireRate
global.weaponArray[0,5] = 12; //weaponClipSize
global.weaponArray[0,6] = 120; //weaponReloadSpeed   
global.weaponArray[0,7] = "Pistol";//weaponTitle
global.weaponArray[0,8] = soundLaser1;//weaponShootSound
global.weaponArray[0,9] = soundReload1;//weaponReloadSound
global.weaponArray[0,10] = soundHit;//weaponHitSound
global.weaponArray[0,11] = 20;//weaponhitDelay

// [1] Rifle
global.weaponArray[1,0] = "Rifle"; //Name
global.weaponArray[1,1] = spr_rifle; //sprite index
global.weaponArray[1,2] = 7; //rate of fire
global.weaponArray[1,3] = obj_bullet;  //ammo index
global.weaponArray[1,4] = 30; //magazine size
global.weaponArray[1,5] = 0; //offset
global.weaponArray[1,6] = -5; //offset   