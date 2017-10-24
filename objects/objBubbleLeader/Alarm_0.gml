/// @description

if tribeMissing > 0{
	var bubble = instance_create_layer(x,y,"Player",objBubble);
	bubble.tribe = id;
	tribeMissing--;
}
alarm[0] = 20*room_speed;