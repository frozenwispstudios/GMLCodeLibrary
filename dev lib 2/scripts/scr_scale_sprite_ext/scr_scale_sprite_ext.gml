/// @description scr_scale_sprite_ext(object,xscale,yscale,min_xscale,max_xscale,min_yscale,max_yscale,increase_decrease);

/// @param object
/// @param xscale
/// @param yscale
/// @param min_xscale
/// @param max_xscale
/// @param mix_yscale
/// @param max_yscale
/// @param increase_decrease

//set arguments
object = argument0;
xscale = argument1;
yscale = argument2;
min_xscale = argument3;
max_xscale = argument4;
mix_yscale = argument5;
max_yscale = argument6;
increase_decrease = argument7;

//increase or decrease the scale of an object sprite
if increase_decrease != 0{
	if (min_xscale < xscale) and (max_xscale > xscale){
		xscale += increase_decrease;
	}else if (min_xscale < yscale) and (max_xscale > yscale){
		yscale += increase_decrease;
	}
}

//set objects sprite scale
object.image_xscale = xscale; 
object.image_yscale = yscale;