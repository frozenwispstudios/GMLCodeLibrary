/// @description scr_draw_bar_ext(bar_sprite,bar_subimg,bar_outline_sprite,bar_outline_subimg,x,y,value,max_value,yscale,rotation,color,alpha);

/// @param bar_sprite
/// @param bar_subimg
/// @param bar_outline_sprite
/// @param bar_outline_subimg
/// @param xx
/// @param yy
/// @param value
/// @param max_value
/// @param yscale
/// @param rotation
/// @param color
/// @param alpha

//set arguments
var bar_sprite = argument0;
var bar_subimg = argument1;
var bar_outline_sprite = argument2;
var bar_outline_subimg = argument3;
var xx = argument4;
var yy = argument5;
var value = argument6;
var max_value = argument7;
var yscale = argument8;
var rotation = argument9;
var color = argument10;
var alpha = argument11;

//draw bar code
draw_sprite_ext(bar_sprite,bar_subimg,xx,yy,(value/max_value),yscale,rotation,color,alpha);
draw_sprite_ext(bar_outline_sprite,bar_outline_subimg,xx,yy,1,yscale,rotation,color,alpha);
