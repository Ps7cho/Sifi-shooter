/// @description check ranges

if (instance_exists(objPlayer)){
	if(despawnRange(x+chunkSize/2,y+chunkSize/2)){
		instance_destroy();
	}
}
