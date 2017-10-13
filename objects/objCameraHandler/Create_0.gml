/// @description Initialize

desired_width = 0; //Set this if portrait mode
desired_height = 180; //Landscape
aspect_ratio = display_get_width()/display_get_height();
desired_width = round(desired_height*aspect_ratio); //Landscape
//desired_height = round(desired_height/aspect_ratio); //Portrait

//Pixel scaling
if(display_get_width() mod desired_width != 0)
{
    var d = round(display_get_width()/desired_width)
    desired_width = display_get_width()/d;
}
if(display_get_height() mod desired_height != 0)
{
    var d = round(display_get_height()/desired_height)
    desired_height = display_get_height()/d;
}

//Check for an odd number, and convert to even, really shouldn't happen but just in case
if(desired_width & 1)
    desired_width++;
if(desired_height & 1)
    desired_height++;

//Zooms to the maximum possible size for your display by default
zoom = floor(display_get_height()/desired_height);

//Resize and center
surface_resize(application_surface,desired_width*zoom,desired_height*zoom);
window_set_size(desired_width*zoom,desired_height*zoom);
//display_set_gui_size(desired_width,desired_height); //Change this if you want a smaller/larger GUI

//Declare globals for easy access
global.VIEW_W = desired_width;
global.VIEW_H = desired_height;
global.ZOOM = zoom;
alarm[0] = 1;