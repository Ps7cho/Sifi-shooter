/// @description

if tribeMissing > 0{
	bubble = instance_create_layer(x,y,"Player",objBubble);
	bubble.tribe = id;
	tribeMissing--;
}
alarm[2] = 20*room_speed;