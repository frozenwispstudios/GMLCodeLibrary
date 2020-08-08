/// @description scr_mouse_hover(object);

/// @param object

//set argument
object = argument0;

if position_meeting(mouse_x, mouse_y, object){
	return(true);
}else{
	return(false)
}