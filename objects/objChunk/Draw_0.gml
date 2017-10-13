/// @description Insert description here


for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = 0; j < numSizeBlocks; j++) {
		var zz = (chunkGrid[# i, j]);
		draw_set_color(getColorZ(chunkGrid[# i, j] )	);
		draw_rectangle(x + i*blockSize, y + j*blockSize, x + (i+1)*blockSize, y + (j+1)*blockSize,false);
		if global.debug {
			//draw_text_color(x + i*blockSize, y + j*blockSize, string(zz), c_white, c_white, c_gray, c_gray, 1);
		}
	}
}
if global.debug {
	draw_set_color(c_red);
	draw_rectangle(x,y,x+chunkSize,y+chunkSize, true); //for debugging 
}