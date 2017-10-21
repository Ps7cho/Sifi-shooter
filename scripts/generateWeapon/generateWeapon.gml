


// Start of Script

var weaponType = argument0;
var weaponTier = argument1;

var weaponCharacteristics = ds_map_create();
ds_map_copy(weaponCharacteristics, ds_map_find_value(global.weaponList, weaponType));

// Get the specific weapon tier max increases
var weaponTierMaxIncreasePercentages = ds_map_find_value(global.weaponTierIncreasePercentagesMap, weaponTier);


// Increase characteristics to meet that of previous weapon tier
for (var tierIndex = 0; tierIndex < weaponTier; tierIndex++) {
	var tierMap = ds_list_find_value(global.weaponTierIncreasePercentagesList, tierIndex)
	
	// New base damage
	var newBaseDamage  = ds_map_find_value(weaponCharacteristics, global.WEAPON_DAMAGE_KEY) 
		* (1 + (ds_map_find_value(tierMap, global.WEAPON_DAMAGE_KEY) / 100));
	ds_map_set(weaponCharacteristics, global.WEAPON_DAMAGE_KEY, newBaseDamage);
	
	// Other Characteristics go Here
	
}


// Roll for a random increase percentage
var baseDamageIncreasePercentage = 1 + (random_range(0, ds_map_find_value(weaponTierMaxIncreasePercentages, global.WEAPON_DAMAGE_KEY) / 100));
var newBaseDamage = ds_map_find_value(weaponCharacteristics, global.WEAPON_DAMAGE_KEY) * baseDamageIncreasePercentage;
ds_map_set(weaponCharacteristics, global.WEAPON_DAMAGE_KEY, newBaseDamage);

// ------------------------------------------------------------
// USE WITH CURRENT IMPLENTATION / ONLY FOR DEBUG!!!
// ------------------------------------------------------------
if weaponType == primaryWeapons.pistol { 
	var weaponObj = instance_create_layer(0,0,"Instances",objPistol);
	weaponObj.weaponDamage = ds_map_find_value(weaponCharacteristics, global.WEAPON_DAMAGE_KEY);
	return weaponObj;
} else {
	var weaponObj = instance_create_layer(0,0,"Instances",objRifle);
	weaponObj.weaponDamage = ds_map_find_value(weaponCharacteristics, global.WEAPON_DAMAGE_KEY);
	return weaponObj;
}


// ------------------------------------------------------------
// USE THIS WHEN RETURNING JUST A MAP
// return weaponCharacteristics;
// ------------------------------------------------------------