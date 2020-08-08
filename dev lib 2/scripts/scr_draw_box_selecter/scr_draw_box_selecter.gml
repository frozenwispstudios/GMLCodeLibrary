///scr_draw_box_selecter(startx,starty,colour1,colour2,colour3,colour4,fill_alpha,outline_alpha);

startx = argument[0];
starty = argument[1];
colour1 = argument[2];
colour2 = argument[3];
colour3 = argument[4];
colour4 = argument[5];
fill_alpha = argument[6];
outline_alpha = argument[7];


if (startx == -1 && starty == -1){
	draw_set_alpha(outline_alpha);
	draw_rectangle_colour(startx,starty,mouse_x,mouse_y,colour1,colour2,colour3,colour4,true);
	draw_set_alpha(fill_alpha);
	draw_rectangle_colour(startx,starty,mouse_x,mouse_y,colour1,colour2,colour3,colour4,false);
	draw_set_alpha(1);
}