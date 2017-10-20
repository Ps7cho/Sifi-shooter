/// @description Insert description here

event_inherited();

//Check Tribe Distance
if instance_exists(tribe){
	if (point_distance(x,y,tribe.x,tribe.y)) > wanderRange{
	dir = point_direction(x,y,tribe.x,tribe.y);
	}
}

// Check if tribe leader is currently targeted
if instance_exists(tribe) && tribe.isTargeted {
	// Set this attacking target to the same as the tribe leader if target leader is targeted
	attackingTarget = tribe.attackingTarget;	
} else if !isTargeted {	
	// Clear attacking target if tribe leader died or tribe leader is not currently targeted
	attackingTarget = noone;
}


