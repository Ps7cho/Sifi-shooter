/// @description  movement

var move_speed_this_frame = movementSpeed*global.seconds_passed;

if mouse_check_button_pressed(mb_right){
	playerIdleCounter = 0;

	xMovementPosition = mouse_x;
	yMovementPosition = mouse_y;
	
	var collisionObj = collision_point(xMovementPosition, yMovementPosition, objParentNPC,false,true);
	if collisionObj != noone {

		// If previously attacking another npc, untarget that player
		if instance_exists(attackingTarget) {
			attackingTarget.isTargeted = false;	
			attackingTarget.attackingTarget = noone;
		}
		
		// Set attacking target to attack the player
		attackingTarget = collisionObj;
		if instance_exists(attackingTarget){
			attackingTarget.isTargeted = true;
			attackingTarget.attackingTarget = id;
			playerState = playerStates.follow;
		}
	} else {
		// If previously attacking another npc, untarget that player
		if attackingTarget != noone {
			if instance_exists(attackingTarget){
				attackingTarget.isTargeted = false;
				attackingTarget.attackingTarget = noone;
			}
			attackingTarget = noone;
		}
		playerState = playerStates.move;
	}
}


if mouse_check_button_pressed(mb_right){
	instance_create_layer(xMovementPosition, yMovementPosition, "Instances", objMouseClick);
}

switch playerState {
	case playerStates.idle:
		#region Idle
		playerIdleCounter++;
		
		if playerIdleCounter > 60 {
			// Special animations for idle state
		}
		
		break;
		#endregion
	case playerStates.move:
		#region Move
		var distanceToMove = point_distance(x, y, xMovementPosition, yMovementPosition);
		var dir = point_direction(x,y,xMovementPosition,yMovementPosition);
		moveme(min(move_speed_this_frame, distanceToMove),dir);
		
		
		if distanceToMove == 0 { //this is not scalable 
			xMovementPosition = noone;
			yMovementPosition = noone;
			playerState = playerStates.idle;
		}
		
		break;
		#endregion
	case playerStates.follow:
		#region Follow
		if instance_exists(attackingTarget){
			var distanceToTarget = point_distance(x, y, attackingTarget.x, attackingTarget.y);
			if distanceToTarget > shootRange {
				var dir = point_direction(x, y, attackingTarget.x, attackingTarget.y);
				moveme( min(move_speed_this_frame, distanceToTarget),dir);
				break;
			} else {
				// Stop the player from moving and change to attack
				var dir = point_direction(x, y, attackingTarget.x, attackingTarget.y);
				moveme(0,dir);
				playerState = playerStates.attack;
			}
		}
		#endregion
	case playerStates.attack:
		#region Attack
		if instance_exists(attackingTarget){
			var distanceToTarget = point_distance(x, y, attackingTarget.x, attackingTarget.y);
			if distanceToTarget <= shootRange {
				// Attack	
				if playerPrimaryWeapon.weaponCanFire {
					fireWeapon(playerPrimaryWeapon, attackingTarget);
				}
			} else {
				// Begin movement toward the enemy again
				var dir = point_direction(x, y, attackingTarget.x, attackingTarget.y);
				moveme( min(move_speed_this_frame, distanceToTarget),dir);
				playerState = playerStates.follow;
			}
		}
		
		break;
		#endregion
}
if keyboard_check_pressed(ord("`")){
	object_set_solid(id,false);
	movementSpeed = 3000;
	if mouse_check_button_pressed(mb_left){
			
	}
}

