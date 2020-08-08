/// @description Insert description here
// You can write your code in this editor
//define scr_particle
//define scr_fire();
global.fire = part_system_create();

pt = part_type_create();
//part_system_depth(pt, -100);
part_type_shape(pt,pt_shape_square);
part_type_size(pt,0.08,0.15,-0.005,0);
part_type_color3(pt,c_red,c_orange,c_yellow);
part_type_alpha3(pt,0.6,0.4,0.2);
part_type_speed(pt,0.002,0.004,-0.1,0.2);
part_type_direction(pt,45,135,0,20);
part_type_gravity(pt,-0.3,270);
part_type_blend(pt,true);
part_type_life(pt,10,15);

emitter1 = part_emitter_create(global.fire);
part_emitter_region(global.fire,emitter1,x-4,x+4,y-4,y+4,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(global.fire,emitter1,pt,1);