/// @description 
randomize();
global.debug = true;
room_set_height(room2, 257000);
room_set_width(room2, 257000);
room_set_background_color(room2,c_green,true);
/*Player = room_instance_add(room2,room_width/2, room_height/2,objPlayer)
global.camera = camera_create()
room_set_camera(room2, 0, global.camera);
room_set_viewport(room2, 0, true, 0, 0, 640, 480);
room_set_view_enabled(room2, true);
*/

players = [];


enum playerStates {
	idle,
	move,
	follow,
	attack
}

enum primaryWeapons {
	pistol,
	rifle
}

room_goto(room2);