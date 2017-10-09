/// @description Draw sprite
var animLenght = 9;
var frameSize = 64;
var animSpeed = 20;

var xx = x-x_offset;
var yy = y-y_offset;

if		(moveX < 0) y_frame = 9;
else if (moveX > 0) y_frame = 11;
else if (moveY < 0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else				x_frame = 0;

//draw chatacter shadow
draw_sprite(sprCharacterShadow, 0, x, y);

//draw character base
draw_sprite_part(spritebody, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character feet
draw_sprite_part(spriteFeet, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character legs
draw_sprite_part(spriteLegs, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character shirt
draw_sprite_part(spriteShirt, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//draw character Hair
draw_sprite_part(spriteHair, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//Animate frame
if(x_frame < animLenght -1) { x_frame += animSpeed/60; }
else							 { x_frame = 1;  }

if global.debug {
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow,true);
}

//HealthBar 
draw_healthbar(x-28,y-75, x+18, y-64, (npcHealth/npcMaxHealth)*100, c_black, c_red, c_green, 0, true, false,);

draw_sprite(sprTarget,isTargeted,xx,yy);