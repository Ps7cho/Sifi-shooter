/// @description spawn player

Player = instance_create_layer((room_width/2)+60, room_height/2,"Player", objPlayer);


if (!instance_exists(objSilva)) {
	instance_create_layer((room_width/2)+40, room_height/2,"Player", objSilva);
}