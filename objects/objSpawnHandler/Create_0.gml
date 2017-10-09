/// @description spawn player

Player = instance_create_layer((room_width/2)+60, room_height/2,"Player", objPlayer);
view_camera[0] = camera_create_view(0, 0, 1920, 1080, 0, Player, -1, -1, 720, 540);

view_enabled = true; 
view_visible[0] = true;

if (!instance_exists(objSilva)) {
	instance_create_layer((room_width/2)+40, room_height/2,"Player", objSilva);
}