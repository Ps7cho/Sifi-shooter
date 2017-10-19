/// @description 

var xx = x-x_offset;
var yy = y-y_offset;


if global.debug {
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow,true);
}

//HealthBar 
draw_healthbar(x-28,y-75, x+18, y-64, (Health/npcMaxHealth)*100, c_black, c_red, c_green, 0, true, false,);

draw_sprite(sprTarget,isTargeted,xx,yy);