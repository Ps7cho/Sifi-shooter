/// @description Insert

globalvar blockSize, chunkSize, despawnRadius, spawnRadius, chunkLoadedSet, chunkMap;

seed = 0;

blockSize = 64;

chunkSize = (blockSize*8);

despawnRadius = 2000;

spawnRadius = 1500;

chunkLoadedSet = ds_map_create(); //used to check if a postition is loaded

chunkMap = ds_map_create(); //used to check if a postition is loaded and what its value is (the full map)

fileSave = "MapSave"
if file_exists(fileSave) {
		chunkMap = ds_map_secure_load(fileSave);
}
