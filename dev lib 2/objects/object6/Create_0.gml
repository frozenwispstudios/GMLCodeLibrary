/// @description Insert description here
// You can write your code in this editor
global.dust = part_system_create();

pt = part_type_create();
//part_system_depth(pt, -100);
part_type_shape(pt,pt_shape_square);
part_type_size(pt,0.02,0.04,-0.0005,0);
part_type_color3(pt,c_white,c_ltgray,c_gray);
part_type_alpha3(pt,0.4,0.3,0.1);
part_type_speed(pt,0.0001,0.0002,0.0001,0.0001);
part_type_direction(pt,45,135,0,20);
part_type_gravity(pt,-0.02,270);
part_type_blend(pt,true);
part_type_life(pt,room_speed*3,room_speed*5);

emitter1 = part_emitter_create(global.dust);
part_emitter_region(global.dust,emitter1,0,room_width,0,room_height,ps_shape_rectangle,ps_distr_linear);
alarm[0] = room_speed;
//part_emitter_stream(global.fire,emitter1,pt,1);
