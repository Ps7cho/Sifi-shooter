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

global.WEAPON_ROUNDS_KEY = "WEAPON_ROUNDS_KEY";
global.WEAPON_CLIP_ROUNDS_KEY = "WEAPON_CLIP_ROUNDS_KEY";
global.WEAPON_CAN_FIRE_KEY = "WEAPON_CAN_FIRE_KEY";


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
ds_map_add(basePistol, global.WEAPON_ROUNDS_KEY, 48);
ds_map_add(basePistol, global.WEAPON_CLIP_ROUNDS_KEY, 12);
ds_map_add(basePistol, global.WEAPON_CAN_FIRE_KEY, true);

var baseRifle = ds_map_create();
ds_map_add(baseRifle, global.WEAPON_TYPE_KEY, primaryWeapons.rifle);
ds_map_add(baseRifle, global.WEAPON_TIER_KEY, WeaponTiers.common);
ds_map_add(baseRifle, global.WEAPON_ACCURACY_KEY, 0.85);
ds_map_add(baseRifle, global.WEAPON_DAMAGE_KEY, 100);
ds_map_add(baseRifle, global.WEAPON_RANGE_KEY, 300);
ds_map_add(baseRifle, global.WEAPON_FIRE_RATE_KEY, 10);
ds_map_add(baseRifle, global.WEAPON_CLIP_SIZE_KEY, 30);
ds_map_add(baseRifle, global.WEAPON_RELOAD_SPEED_KEY, 120);
ds_map_add(baseRifle, global.WEAPON_TITLE_KEY, "Rifle");
ds_map_add(baseRifle, global.WEAPON_SHOOT_SOUND_KEY, soundLaser1);
ds_map_add(baseRifle, global.WEAPON_RELOAD_SOUND_KEY, soundReload1);
ds_map_add(baseRifle, global.WEAPON_HIT_SOUND_KEY, soundHit);
ds_map_add(baseRifle, global.WEAPON_HIT_DELAY_KEY, 20);
ds_map_add(baseRifle, global.WEAPON_ROUNDS_KEY, 90);
ds_map_add(baseRifle, global.WEAPON_CLIP_ROUNDS_KEY, 30);
ds_map_add(baseRifle, global.WEAPON_CAN_FIRE_KEY, true);


// Add weapon templates to global weapon list
global.weaponList = ds_map_create()
ds_map_add(global.weaponList, primaryWeapons.pistol, basePistol);
ds_map_add(global.weaponList, primaryWeapons.rifle, baseRifle);




// Common Tier
var commonIncreasePercentages = ds_map_create();
ds_map_add(commonIncreasePercentages, global.WEAPON_DAMAGE_KEY, 10);
ds_map_add(commonIncreasePercentages, global.WEAPON_FIRE_RATE_KEY, 5);
ds_map_add(commonIncreasePercentages, global.WEAPON_RELOAD_SPEED_KEY, 5);

// Uncommon Tier
var uncommonIncreasePercentages = ds_map_create();
ds_map_add(uncommonIncreasePercentages, global.WEAPON_DAMAGE_KEY, 10);
ds_map_add(uncommonIncreasePercentages, global.WEAPON_FIRE_RATE_KEY, 5);
ds_map_add(uncommonIncreasePercentages, global.WEAPON_RELOAD_SPEED_KEY, 5);

// Rare Tier
var rareIncreasePercentages = ds_map_create();
ds_map_add(rareIncreasePercentages, global.WEAPON_DAMAGE_KEY, 20);
ds_map_add(rareIncreasePercentages, global.WEAPON_FIRE_RATE_KEY, 10);
ds_map_add(rareIncreasePercentages, global.WEAPON_RELOAD_SPEED_KEY, 10);

// Legendary Tier
var legendaryIncreasePercentages = ds_map_create();
ds_map_add(legendaryIncreasePercentages, global.WEAPON_DAMAGE_KEY, 30);
ds_map_add(legendaryIncreasePercentages, global.WEAPON_FIRE_RATE_KEY, 10);
ds_map_add(legendaryIncreasePercentages, global.WEAPON_RELOAD_SPEED_KEY, 10);

// Epic Tier
var epicIncreasePercentages = ds_map_create();
ds_map_add(epicIncreasePercentages, global.WEAPON_DAMAGE_KEY, 40);
ds_map_add(epicIncreasePercentages, global.WEAPON_FIRE_RATE_KEY, 10);
ds_map_add(epicIncreasePercentages, global.WEAPON_RELOAD_SPEED_KEY, 10);


global.weaponTierIncreasePercentagesMap = ds_map_create();
ds_map_add(global.weaponTierIncreasePercentagesMap, WeaponTiers.common, commonIncreasePercentages);
ds_map_add(global.weaponTierIncreasePercentagesMap, WeaponTiers.uncommon, uncommonIncreasePercentages);
ds_map_add(global.weaponTierIncreasePercentagesMap, WeaponTiers.rare, rareIncreasePercentages);
ds_map_add(global.weaponTierIncreasePercentagesMap, WeaponTiers.legandary, legendaryIncreasePercentages);
ds_map_add(global.weaponTierIncreasePercentagesMap, WeaponTiers.epic, epicIncreasePercentages);


global.weaponTierIncreasePercentagesList = ds_list_create();
ds_list_add(global.weaponTierIncreasePercentagesList, 
	commonIncreasePercentages, 
	uncommonIncreasePercentages, 
	rareIncreasePercentages,
	legendaryIncreasePercentages,
	epicIncreasePercentages
);



/*
global.weaponList = ds_list_create();
ds_list_add(global.weaponList, basePistol);
ds_list_add(global.weaponList, baseRifle); 
*/