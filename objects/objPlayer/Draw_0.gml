/// @description Draw sprite
var animLenght = 9;
var frameSize = 64;
var animSpeed = 15;

// offset for the shadow
var xx = x-x_offset;
var yy = y-y_offset;

// direction for the sprite
var dirX = (xMovementPosition - x);
var dirY = (yMovementPosition - y);

if (distance_to_point(xMovementPosition, yMovementPosition) < 1) {
x_frame = 0;
}

if (dirX < 0) and (dirY > 0){
	var newx = (dirX*-1)
	if newx > dirY{
		y_frame = 9;	//left
	}else{
		y_frame = 10;	//down
	}
}else if (dirY < 0) and (dirX >0){
	var newy = (dirY*-1)
	if newy > dirX{
		y_frame = 8;	//up	
	}else{
		y_frame = 11;	//right
	}	
}else if(dirX < 0) and (dirY < 0){
	if dirX > dirY {
		y_frame = 8;	//up
	}else{
		y_frame = 9;	//left
	}
}else if(dirX > 0) and (dirY > 0){
	if dirX > dirY {
		y_frame = 11;//right
	}else{
		y_frame = 10;//down
	}
}



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

//draw character Weapon
draw_sprite_part(spriteWeapon, 0, floor(x_frame)*frameSize ,y_frame*frameSize, frameSize, frameSize, xx, yy);

//Animate frame
if(x_frame < animLenght -1) { x_frame += animSpeed/60; }
else							 { x_frame = 1;  }

if global.debug {
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow,true);
	//draw_circle_color(x,y,shootRange/2,c_red,c_red,true);
	
}
draw_circle_color(x,y,shootRange,c_red,c_red,true);


// For Debug purposes
switch(playerState) {
	case playerStates.idle:
		draw_text_color(x, y, "Idle", c_black, c_black, c_black, c_black, 1.0);
		break;
	case playerStates.move:
		draw_text_color(x, y, "Move", c_lime, c_lime, c_lime, c_lime, 1.0);
		break;
	case playerStates.follow:
		draw_text_color(x, y, "Follow", c_yellow, c_yellow, c_yellow, c_yellow, 1.0);
		break;
	case playerStates.attack:
		draw_text_color(x, y, "Attack", c_red, c_red, c_red, c_red, 1.0);
		break;
		
}

