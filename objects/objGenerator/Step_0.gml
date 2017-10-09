/// @description spawnChunks

if instance_exists(objPlayer){
	var px = objPlayer.x;
	var py = objPlayer.y;

	px -= px % chunkSize;
	py -= py % chunkSize;


	var chunkRadius = chunkSize * ceil(spawnRadius/chunkSize);

	for(var i = px - chunkRadius; i <= px+ chunkRadius; i+= chunkSize){
		for(var j =	py - chunkRadius; j <= py + chunkRadius; j+= chunkSize){
			if(!chunkLoaded(i,j) && spawnRange(i+chunkSize/2,j+chunkSize/2)){
				instance_create_layer(i,j,"Terrain", objChunk);
			}
		}	
	}	
}	