///scr_follow_object(object,distance_from_object,offset_y,speed);

/// @param follow_object
/// @param distance_from_object
/// @param offset_y
/// @param speed

target = argument[0];//target that it follows
distance_from_player = argument[1]; //the distance that it follows minimum
offset_y = argument[2]; //y posistion in the air
spd = argument[3];

//checks for targets range from object before moving
if distance_to_object(target) <= distance_from_player{
	hspd = 0;
	vspd = 0;
}else{
	
	//direction of object with offset
	dir = point_direction(x,y,target.x,target.y-offset_y);

	//get hspd and vspd 
	hspd = lengthdir_x(spd,dir);
	vspd = lengthdir_y(spd,dir);
    
	//move 
	x += hspd*distance_to_object(target);
	y += vspd*distance_to_object(target);
}

