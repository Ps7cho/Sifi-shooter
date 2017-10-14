/// @description Insert description here
// You can write your code in this editor
if (npcHealth <= 0){
	instance_destroy();
}

if (instance_exists(objPlayer)){
	if point_distance(objPlayer.x,objPlayer.y,x,y) > 1400{
		instance_deactivate_object(id);
	}
}


var move_speed_this_frame = walkSpeed*global.seconds_passed;


moveme(move_speed_this_frame,dir);