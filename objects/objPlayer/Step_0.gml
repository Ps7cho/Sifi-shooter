/// @description  movement


if mouse_check_button(mb_right){
	playerIdleCounter = 0;

	xMovementPosition = mouse_x;
	yMovementPosition = mouse_y;
	
	var collisionObj = collision_point(xMovementPosition, yMovementPosition, objSilva,false,true);
	if collisionObj != noone {
		attackingTarget = collisionObj;
		playerState = playerStates.follow;
	} else {
		
		playerState = playerStates.move;
	}
}


if mouse_check_button_released(mb_right){
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
		move_towards_point(xMovementPosition, yMovementPosition, min(playerSpeed, distanceToMove));
		
		if distanceToMove == 0 {
			xMovementPosition = noone;
			yMovementPosition = noone
			playerState = playerStates.idle;
		}
		
		break;
		#endregion
	case playerStates.follow:
		#region Follow
		var distanceToTarget = point_distance(x, y, attackingTarget.x, attackingTarget.y);
		if distanceToTarget > shootRange {
			move_towards_point(attackingTarget.x, attackingTarget.y, min(playerSpeed, distanceToTarget));
			break;
		} else {
			// Stop the player from moving and change to attack
			move_towards_point(attackingTarget.x, attackingTarget.y, 0);
			playerState = playerStates.attack;
		}
		#endregion
	case playerStates.attack:
		#region Attack
		var distanceToTarget = point_distance(x, y, attackingTarget.x, attackingTarget.y);
		if distanceToTarget < shootRange {
			// Attack	
		} else {
			// Begin movement toward the enemy again
			move_towards_point(attackingTarget.x, attackingTarget.y, min(playerSpeed, distanceToTarget));
			playerState = playerStates.follow;
		}
		
		break;
		#endregion
}

/*
if targetY != noone && targetY != noone {
	attackingTarget = collision_point(targetX, targetY, objSilva,false,true)
	if attackingTarget != noone{
		draw_line_color(x,y,attackingTarget.x,attackingTarget.y,c_white,c_red);
		var mouseDistance = point_distance(x, y, attackingTarget.x, attackingTarget.y);
		move_towards_point(attackingTarget.x, attackingTarget.y, min(playerSpeed, mouseDistance));
		
	}else{
	attackingTarget = noone;
		var mouseDistance = point_distance(x, y, targetX, targetY);
		move_towards_point(targetX, targetY, min(playerSpeed, mouseDistance));
		//if (mp_grid_path(global.grid, path, x, y, targetX, targetY, true)){
		//	path_start(path, playerSpeed, path_action_stop, false);
		//}
	}
}
*/

