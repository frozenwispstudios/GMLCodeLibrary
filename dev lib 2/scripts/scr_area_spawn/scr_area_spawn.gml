///scr_area_spawn(object,sprite,fill_chance,outline_chance);

/// @param object
/// @param sprite
/// @param fill_chance
/// @param outline_chance

object = argument[0];
sprite = argument[1];
fill_chance = argument[2];
outline_chance = argument[3];


sprite_width_size = sprite_get_width(sprite);
sprite_height_size = sprite_get_height(sprite);

for (var i = bbox_left; i < bbox_right; i += sprite_width_size) //spawns left to right
{
	for (var j = bbox_top; j < bbox_bottom; j += sprite_height_size)//spawns up to down
	{
		if (i == bbox_left) || (i > bbox_right-sprite_width_size) || (j == bbox_top) || (j > bbox_bottom-sprite_height_size)
		{
			if (scr_chance(outline_chance)) {instance_create_depth(i,j,0,object);}//outline
		}
		else
		{
			if (scr_chance(fill_chance)) {instance_create_depth(i,j,0,object);}//fill
		}
	}
}

instance_destroy();