/// @description

if chance(100){
	var loot = random_range(0,100);
	
	if loot <= 50 {
		instance_create_layer(x,y,"Instances",objHealth);	exit;
	}else if loot <= 75 {
		instance_create_layer(x,y,"Instances",objArmor);	exit;
	}else if loot <= 90 {
		instance_create_layer(x,y,"Instances",objPistol);	exit;
	}else if loot <= 100 {
		instance_create_layer(x,y,"Instances",objRifle);	exit;
	}
		
		
		
		

}
