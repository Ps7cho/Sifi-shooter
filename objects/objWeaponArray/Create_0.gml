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

global.WEAPON_TYPE_KEY = "WEAPON_TYPE_KEY";
global.WEAPON_TIER_KEY = "WEAPON_TIER_KEY";
global.WEAPON_ACCURACY_KEY = "WEAPON_ACCURACY_KEY";
global.WEAPON_DAMAGE_KEY = "WEAPON_DAMAGE_KEY";
global.WEAPON_RANGE_KEY = "WEAPON_RANGE_KEY";
global.WEAPON_FIRE_RATE_KEY = "WEAPON_FIRE_RATE_KEY";
global.WEAPON_CLIP_SIZE_KEY = "WEAPON_CLIP_SIZE_KEY";
global.WEAPON_RELOAD_SPEED_KEY = "WEAPON_RELOAD_SPEED_KEY";
global.WEAPON_TITLE_KEY = "WEAPON_TITLE_KEY";
global.WEAPON_SHOOT_SOUND_KEY = "WEAPON_SHOOT_SOUND_KEY";
global.WEAPON_RELOAD_SOUND_KEY = "WEAPON_RELOAD_SOUND_KEY";
global.WEAPON_HIT_SOUND_KEY = "WEAPON_HIT_SOUND_KEY";
global.WEAPON_HIT_DELAY_KEY = "WEAPON_HIT_DELAY_KEY";


var basePistol = ds_map_create();
ds_map_add(basePistol, global.WEAPON_TYPE_KEY, primaryWeapons.pistol);
ds_map_add(basePistol, global.WEAPON_TIER_KEY, WeaponTiers.common);
ds_map_add(basePistol, global.WEAPON_ACCURACY_KEY, 0.85);
ds_map_add(basePistol, global.WEAPON_DAMAGE_KEY, 30);
ds_map_add(basePistol, global.WEAPON_RANGE_KEY, 300);
ds_map_add(basePistol, global.WEAPON_FIRE_RATE_KEY, 60);
ds_map_add(basePistol, global.WEAPON_CLIP_SIZE_KEY, 12);
ds_map_add(basePistol, global.WEAPON_RELOAD_SPEED_KEY, 120);
ds_map_add(basePistol, global.WEAPON_TITLE_KEY, "Pistol");
ds_map_add(basePistol, global.WEAPON_SHOOT_SOUND_KEY, soundLaser1);
ds_map_add(basePistol, global.WEAPON_RELOAD_SOUND_KEY, soundReload1);
ds_map_add(basePistol, global.WEAPON_HIT_SOUND_KEY, soundHit);
ds_map_add(basePistol, global.WEAPON_HIT_DELAY_KEY, 20);

var baseRifle = ds_map_create();
ds_map_add(baseRifle, global.WEAPON_TYPE_KEY, primaryWeapons.rifle);
ds_map_add(basePistol, global.WEAPON_TIER_KEY, WeaponTiers.common);
ds_map_add(baseRifle, global.WEAPON_ACCURACY_KEY, 0.85);
ds_map_add(baseRifle, global.WEAPON_DAMAGE_KEY, 30);
ds_map_add(baseRifle, global.WEAPON_RANGE_KEY, 300);
ds_map_add(baseRifle, global.WEAPON_FIRE_RATE_KEY, 60);
ds_map_add(baseRifle, global.WEAPON_CLIP_SIZE_KEY, 12);
ds_map_add(baseRifle, global.WEAPON_RELOAD_SPEED_KEY, 120);
ds_map_add(baseRifle, global.WEAPON_TITLE_KEY, "Rifle");
ds_map_add(baseRifle, global.WEAPON_SHOOT_SOUND_KEY, soundLaser1);
ds_map_add(baseRifle, global.WEAPON_RELOAD_SOUND_KEY, soundReload1);
ds_map_add(baseRifle, global.WEAPON_HIT_SOUND_KEY, soundHit);
ds_map_add(baseRifle, global.WEAPON_HIT_DELAY_KEY, 20);


// Add weapon templates to global weapon list
global.weaponList = ds_list_create();
ds_list_add(global.weaponList, basePistol);
ds_list_add(global.weaponList, baseRifle); 