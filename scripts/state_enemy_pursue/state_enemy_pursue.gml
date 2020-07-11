if (argument0 == step) {
	if (state_new) {
		truestate_clear_history();
	}
	
	if (instance_exists(obj_game_player)) {
		var _dir = point_direction(x, y, obj_game_player.x, obj_game_player.y);
		hspd = dcos(_dir) * mvmt_spd;
		vspd = dsin(_dir) * mvmt_spd * -1;
	}
	
	check_collision_and_move_xy();
	
	if (state_timer >= pursure_time) {
		truestate_switch(EnemyStates.IDLE)
	}
	
	actor_vulnerable_to(obj_player_bullet, EnemyStates.HIT);
} else if (argument0 == draw) {
	sprite_index = spr_enemy;
	draw_self_invincible();
}