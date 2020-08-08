///scr_draw_screen_fade(fade_speed,colour1,colour2,colour3,colour4,starting_alpha);

/// @param fade_speed
/// @param colour1
/// @param colour2
/// @param colour3
/// @param colour4
/// @param starting_alpha

fade_speed = argument[0];
colour1 = argument[1];
colour2 = argument[2];
colour3 = argument[3];
colour4 = argument[4];
starting_alpha = argument[5];

starting_alpha += fade_speed;

draw_set_alpha(starting_alpha);
draw_rectangle_color(0,0,room_width,room_height,colour1,colour2,colour3,colour4,false);
draw_set_alpha(1);