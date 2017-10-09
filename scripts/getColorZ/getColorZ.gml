var zz = argument0;
var r=0,b=0,g=0;



if (zz < waterLevel) {
	b = 50 + (zz / waterLevel) * 200;
}else{
	g = 90 - ((zz - waterLevel) / 50) * (100-waterLevel);
}

return make_color_rgb(r,g,b);
