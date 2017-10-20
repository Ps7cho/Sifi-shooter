/// @description Insert description here

event_inherited();

//Check Tribe Distance
if instance_exists(tribe){
	if tribe.isTargeted {
		attackingTarget = tribe.attackingTarget;	
	} else if !isTargeted {
		attackingTarget = noone;	
	}
	
	if (point_distance(x,y,tribe.x,tribe.y)) > wanderRange{
	dir = point_direction(x,y,tribe.x,tribe.y);
	}
}

// Check if Tribe Leader is dead
if !instance_exists(tribe) {
	attackingTarget = noone;
}


