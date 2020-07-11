if (argument0 == step) {
	if (state_new) {
		if (debug_mode) {
			show_debug_message("WAIT");
		}
		truestate_clear_history();
	}
	
	if (instance_exists(obj_game_player) && state_timer >= pursure_time) {
		truestate_switch(EnemyStates.PURSUE);
	}
	
	actor_vulnerable_to(obj_player_bullet, EnemyStates.HIT);
} else if (argument0 == draw) {
	sprite_index = spr_enemy;
	draw_self_invincible();
}