/// @description scr_sprite_rotation(object,rotation,rotation_min,rotation_max,rotation_speed);

/// @param object
/// @param rotation
/// @param rotation_min
/// @param rotation_max
/// @param rotation_speed

//set arguments
object = argument0;
rotation = argument1;
rotation_min = argument2;
rotation_max = argument3;
rotation_speed = argument4;

//clockwise or anticlockwise the roation of an objects sprite
if rotation_speed != 0{
	if (rotation_min < rotation) and (rotation_max > rotation){
		rotation += rotation_speed;
	}
}

object.image_angle = rotation;