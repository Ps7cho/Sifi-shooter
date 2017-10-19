/// @description Insert description here

event_inherited();

//Check Tribe Distance
if instance_exists(tribe){
	if (point_distance(x,y,tribe.x,tribe.y)) > wanderRange{
	dir = point_direction(x,y,tribe.x,tribe.y);
	}
}
