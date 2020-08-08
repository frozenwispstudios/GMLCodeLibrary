/// @description scr_draw_grid( left, right, top, down, color, alpha, tiles_size, line_width );
/// @param left
/// @param right
/// @param top
/// @param down
/// @param color
/// @param alpha
/// @param tileSize
/// @param lineWidth

var left = argument0
var right = argument1;
var top = argument2;
var down = argument3;
var col = argument4;
var alpha = argument5;
var tilesize = argument6;
var linewidth = argument7;

//grid colour and alpha
draw_set_color(col);
draw_set_alpha(alpha);

// Horizontal Lines
for(var h_lines=0; h_lines<(down/tilesize); h_lines++){
    draw_line_width( left, h_lines * tilesize, right, h_lines* tilesize, linewidth);
}
// Vertical Lines
for(var v_lines = 0; v_lines < (right/tilesize); v_lines++){
    draw_line_width( tilesize* v_lines, top, tilesize* v_lines, down, linewidth );
}

//set to defaults
draw_set_color(c_white);
draw_set_alpha(1);
