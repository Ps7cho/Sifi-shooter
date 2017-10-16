/// @description Armor? what does it do?
 event_inherited();


var loot = random_range(0,100);
	
if loot <= 70 {
	armorTier = 1;	//70%
}else if loot <= 90 {
	armorTier = 2;	//20%
}else if loot <= 97 {
	armorTier = 3;	//7%
}else if loot <= 100 {
	armorTier = 4;	//3%
}


switch (armorTier){
	case 1: 
	armorValue = 100; break;//100% increase
	case 2: 
	armorValue = 150; break;//50% increase
	case 3: 
	armorValue = 180; break;//20% increase
	case 4: 
	armorValue = 200; break;//11% increase
}