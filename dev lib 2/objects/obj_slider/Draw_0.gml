/// @description Insert description here
// You can write your code in this editor
///draw event 

draw_self();
draw_sprite_part(sprite_index,1,0,0,sprite_width*value,sprite_height,x,y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_button,0,x+sprite_width*value,y+8);
draw_text(x,y,round(value*100));
