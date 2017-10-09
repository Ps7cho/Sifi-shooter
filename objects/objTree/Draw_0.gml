/// @description 
draw_sprite_ext(sprTreeShadow,0,x+30,y+93,1,1,120,c_dkgray,.5)
draw_self();

if global.debug {
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow,true);
}