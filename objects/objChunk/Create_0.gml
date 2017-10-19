/// @description 

loadChunk();
waterLevel = 35;


for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = numSizeBlocks; j >=0; j--) {
		var zz = (chunkGrid[# i, j]);
		
		if (zz < waterLevel){
			var water = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objWater);
		}else if (zz > 60) and (zz < 80){
			if chance(0.1){
				var tree = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objTree);
				}
		}else if (zz >= 85) and (zz <=100){
			var rock = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objRock);
		}else if zz == 101{
			var wall = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objWall);
		}
		if zz > 60 {
			if chance(.01) {
				//instanceID = instance_create_layer((x + i*blockSize)+32, (y + j*blockSize)+32,"Player", objSilva);
				//objSilva.instanceID = instanceID;	
				instance_create_layer((x + i*blockSize)+32, (y + j*blockSize)+32,"Player", objBubbleLeader);
			}
		}
	}
}

instance_activate_region(x, y, chunkSize, chunkSize, true);
/*
mp_grid_add_instances(global.grid, objWater, true);
mp_grid_add_instances(global.grid, objRock, true);
mp_grid_add_instances(global.grid, objTree, true);
mp_grid_add_instances(global.grid, objWall, true);