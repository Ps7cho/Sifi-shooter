/// @description 

window_center();
with objSpawnHandler {
	view_camera[0] = camera_create_view(0, 0, 1920, 1080, 0, Player, -1, -1, 1920, 1080);

	view_enabled = true; 
	view_visible[0] = true;
}