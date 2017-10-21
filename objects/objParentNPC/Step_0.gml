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


var move_speed_this_frame = movementSpeed*global.seconds_passed;

if isTargeted {
	/* 
	The npc is being targeted by the player, so attack the player.
	*/
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
} else if instance_exists(attackingTarget) {
	/* 
	If an npc is part of a tribe it would have the ability to target a player if its leader
	became targeted without the npc being targeted.  Thus this block of code runs similar as
	though the npc was targeted directly.
	*/
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
	/* 
	Move the npc.  It is not being targeted or attacking a player
	*/
	attackingTarget = noone;
	moveme(move_speed_this_frame,dir);
}