///scr_pixel_fire_particles();

//define scr_particle
global.Sname = part_system_create()

pt = part_type_create()
//part_system_depth(pt,depth = -100000000)
part_type_shape(pt,pt_shape_square)
part_type_size(pt,0.05,0.08,-0.005,0)
part_type_color3(pt,c_red,c_orange,c_yellow)
part_type_alpha3(pt,0.8,0.5,0.4)
part_type_speed(pt,0.35,0.80,-0.02,0)
part_type_direction(pt,45,135,0,0)
part_type_gravity(pt,0,270)
part_type_blend(pt,true)
part_type_life(pt,16,24)

emitter1 = part_emitter_create(global.Sname)
part_particles_create(emitter1,x,y,global.Sname,3)
