if (global.game_start && !global.game_over) {
	if (!instance_exists(obj_game_player) && !global.game_over) {
		with(instance_create_layer(x, y, "TV_3", obj_game_player)) {
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
		
		var _spawn_x = irandom_range(play_bounds[0], play_bounds[2]);
		var _spawn_y = irandom_range(play_bounds[1], play_bounds[3]);
		
		instance_create_layer(_spawn_x, _spawn_y, "TV_2", obj_enemy_spawner)
		
		// Speed up enemy spawns when score gets to certain thresholds
		if (player_score mod enemy_spawn_speed_score_trigger == 0 && player_score > 0) {
			play_subgame_sound(sfx_level_up);
			enemy_spawn_timer -= 15;
			enemy_spawn_timer = clamp(enemy_spawn_timer, 25, 120);
		}
	}
}

if (global.game_over) {
	with(obj_enemy) {
		instance_destroy();
	}
	
	with(obj_bomb_explode) {
		instance_destroy();
	}
	
	with(obj_health_pickup) {
		instance_destroy();
	}
	
	with(obj_bomb_pickup) {
		instance_destroy();
	}
}