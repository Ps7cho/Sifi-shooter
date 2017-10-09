ds_map_delete(chunkLoadedSet,getKey(x,y));

ds_map_replace(chunkMap,getKey(x,y),ds_grid_write(chunkGrid));

ds_grid_destroy(chunkGrid);
