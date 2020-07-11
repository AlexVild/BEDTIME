if (global.game_start) {
	if (!instance_exists(obj_game_player)) {
		with(instance_create_layer(x, y, "TV_2", obj_game_player)) {
			controller = other.id;
			other.game_player_instance = id;
		}
	}
	
	if (is_selected) {
		// reset mouse position to center
		window_mouse_set(window_get_width() / 2, window_get_height() / 2);
	}
}