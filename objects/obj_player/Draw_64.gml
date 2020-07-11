if (debug_mode) {
	draw_set_font(fnt_game);
	draw_text_outlined(15, 240, c_black, c_white, "Selected domain: " + string(selected_domain));
	draw_set_font(-1);
}