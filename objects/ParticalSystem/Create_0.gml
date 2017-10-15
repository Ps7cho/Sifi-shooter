/// @description 
x = room_width/2;
y = room_height/2;

//partical system
global.partSystem = part_system_create();

//partical
partical = part_type_create();
part_type_shape(partical,pt_shape_circle);
part_type_scale(partical,1,.7);
part_type_size(partical,40,40,-1,0);
part_type_color1(partical, c_aqua);
part_type_alpha3(partical, .2, 0, 1);
part_type_speed(partical, 25, 26, -.8,0);
part_type_direction(partical,90,90,0,0);



//partical Emitter
/*partEmitt = part_emitter_create(partSystem);
part_emitter_region(partSystem,partical,x,x,y,y,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(partSystem,partEmitt,partical,1);
*/