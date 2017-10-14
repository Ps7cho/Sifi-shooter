/// @description Insert description here
// You can write your code in this editor
if (Health <= 0){
	instance_destroy();
}

if (instance_exists(objPlayer)){
	if point_distance(objPlayer.x,objPlayer.y,x,y) > 1400{
		instance_deactivate_object(id);
	}
}


var move_speed_this_frame = walkSpeed*global.seconds_passed;

if isTargeted {
	if instance_exists(attackingTarget){
		var distanceToTarget = point_distance(x, y, attackingTarget.x, attackingTarget.y);
		if distanceToTarget > shootRange {
			var direct = point_direction(x, y, attackingTarget.x, attackingTarget.y);
			moveme( min(move_speed_this_frame, distanceToTarget),direct);
		}else{
			moveme(0,dir);
			if primaryWeapon.weaponCanFire{
				fireWeapon(primaryWeapon, attackingTarget);
			}
		}
	}else{
		attackingTarget = noone;	
	}
}else{
	moveme(move_speed_this_frame,dir);
}