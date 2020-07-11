if (global.game_start) {
	if (!instance_exists(obj_game_player)) {
		with(instance_create_layer(x, y, "TV_2", obj_game_player)) {
			controller = other.id;
			other.game_player_instance = id;
		}
	}
	
	if (is_selected) {
		if (!debug_mode) {
			window_set_cursor(cr_none);
		}
		// lock mouse to area
		window_mouse_set(
			clamp(window_mouse_get_x(),250,window_get_width() - 250),
			clamp(window_mouse_get_y(),100,window_get_height() - 100)
		);
	}
	
	// spawning enemies
	
	if (spawn_enemy) {
		spawn_enemy = false;
		alarm[0] = enemy_spawn_timer;
		instance_create_layer(x, y, "TV_2", obj_enemy_spawner)
	}
}