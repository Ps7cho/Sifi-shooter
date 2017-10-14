/// @description Insert description here
// You can write your code in this editor
if (npcHealth <= 0){
	instance_destroy();
}


var move_speed_this_frame = walkSpeed*global.seconds_passed;


moveme(move_speed_this_frame,dir);