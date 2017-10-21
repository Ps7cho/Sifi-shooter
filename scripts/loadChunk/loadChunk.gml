numSizeBlocks = (chunkSize / blockSize);
chunkGrid = ds_grid_create(numSizeBlocks,numSizeBlocks);
/*
var px = (room_width/2);
var py = (room_height/2);

px -= px % chunkSize;
py -= py % chunkSize;

var deep = ds_grid_create(numSizeBlocks,numSizeBlocks);

for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = 0; j < numSizeBlocks; j++){
		deep[# i,j] = 101;
	}	
}
deep = ds_grid_write(deep);
ds_map_replace(chunkMap,getKey(px,py),deep);
*/
if(ds_map_exists(chunkMap,getKey(x,y))){
    var str = ds_map_find_value(chunkMap,getKey(x,y));
    ds_grid_read(chunkGrid,str);
}else{
	for(var i = 0; i < numSizeBlocks; i++) {
		for(var j = 0; j < numSizeBlocks; j++){
			var zz = getPerlinNoise_2D(x / blockSize + i,y / blockSize + j,100);
			chunkGrid[# i,j] = zz;
		}	
	}
}	

ds_map_add(chunkLoadedSet,getKey(x,y),1);//used in chunkLoaded()
