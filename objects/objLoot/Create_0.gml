/// @description 












//partical system
partSystem = global.partSystem;

//partical
partical = part_type_create();
part_type_shape(partical,pt_shape_pixel);
part_type_color1(partical, c_yellow);
part_type_alpha2(partical, 1, 0);
part_type_speed(partical, 0.1, 0.5,0,0);
part_type_direction(partical,20,150,0,0);



//partical Emitter
partEmitt = part_emitter_create(partSystem);
part_emitter_region(partSystem,partical,x,x,y,y-9,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(partSystem,partEmitt,partical,10);