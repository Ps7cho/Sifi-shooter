/// @description 


var hcells = room_width div blockSize;
var vcells = room_height div blockSize;

global.grid = mp_grid_create(0,0,hcells, vcells, blockSize, blockSize);


//add the water
mp_grid_add_instances(global.grid, objWater, true);