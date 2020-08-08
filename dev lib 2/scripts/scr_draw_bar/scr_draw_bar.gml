/// @description scr_draw_bar(sprite, bar_subimg, bar_outline_sprite, bar_outline_subimg, x, y, value, max_value);

/// @param sprite
/// @param bar_subimage
/// @param bar_outline_sprite
/// @param bar_outline_subimg
/// @param x
/// @param y
/// @param value
/// @param max_value

//set arguments
var bar_sprite = argument0;
var bar_subimg = argument1;
var bar_outline_sprite = argument2;
var bar_outline_subimg = argument3;
var xx = argument4;
var yy = argument5;
var value = argument6;
var max_value = argument7;

//draw bar code
draw_sprite_ext(bar_sprite,bar_subimg,xx,yy,value/max_value,1,0,c_white,1);
draw_sprite(bar_outline_sprite,bar_outline_subimg,xx,yy);