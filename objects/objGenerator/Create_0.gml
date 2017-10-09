/// @description Insert

globalvar blockSize, chunkSize, despawnRadius, spawnRadius, chunkLoadedSet, chunkMap;

seed = 0;

blockSize = 64;

chunkSize = (blockSize*8);

despawnRadius = 2000;

spawnRadius = 1500;

chunkLoadedSet = ds_map_create(); //used in chunkLoaded()

chunkMap = ds_map_create();
