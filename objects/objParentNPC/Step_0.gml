/// @description Insert description here
// You can write your code in this editor

if(moveX != 0) {
	var collisionH = place_meeting(x+moveX, y, objWater);
	if (collisionH) {
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, objWater)){ x += sign(moveX); }
			else { break; }
		}
		moveX = 0;
	}
}

if(moveY != 0) {
	var collisionH = place_meeting(x+moveY, y, objWater);
	if (collisionH) {
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveY), y, objWater)){ x += sign(moveY); }
			else { break; }
		}
		moveY = 0;
	}
}

x += moveX;
y += moveY;