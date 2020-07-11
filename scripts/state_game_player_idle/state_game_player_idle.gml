if (argument0 == step) {
	if (state_new) {
		truestate_clear_history();
	}
	
	if (controller.is_selected) {
	}
} else if (argument0 == draw) {
	sprite_index = spr_player;
	draw_self();
}