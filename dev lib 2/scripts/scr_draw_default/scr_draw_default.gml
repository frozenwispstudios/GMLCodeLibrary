/// @description scr_draw_default(font_default);

/// @param font_default

font_default = argument0;

shader_reset();
draw_set_color(c_white);
//draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(default_font);