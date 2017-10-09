/// @description 

//This is super temporary//
var blockSize = 64;
var chunkSize = (blockSize*8);
var numSizeBlocks = (chunkSize / blockSize);
//						//


var px = (room_width/2);
var py = (room_height/2);

px -= px % chunkSize;
py -= py % chunkSize;

var deep = ds_map_create();

for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = 0; j < numSizeBlocks; j++){
		deep[# i,j] = 1;
	}	
}