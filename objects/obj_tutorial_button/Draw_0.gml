if (selected) {
	sprite_index = selected_spr;
} else {
	sprite_index = deselect_spr;
}

if (is_visible) {
	draw_self();	
}